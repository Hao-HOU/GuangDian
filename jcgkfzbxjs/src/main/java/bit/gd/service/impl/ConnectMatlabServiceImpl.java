package bit.gd.service.impl;

import bit.gd.common.Const;
import bit.gd.common.ResponseCode;
import bit.gd.common.ServerResponse;
import bit.gd.dao.*;
import bit.gd.pojo.*;
import bit.gd.singleton.GDMatlabSingleton;
import bit.gd.service.IConnectMatlabService;
import bit.gd.service.IDataPersistenceService;
import bit.gd.service.IFileService;
import bit.gd.util.PropertiesUtil;
import com.mathworks.toolbox.javabuilder.MWException;
import gdmatlab.GDMatlab;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.io.File;
import java.util.Date;

/**
 * Created by Hao HOU on 2018/3/6.
 */
@Service
public class ConnectMatlabServiceImpl implements IConnectMatlabService {
    private static final Logger LOGGER = LoggerFactory.getLogger(IConnectMatlabService.class);

    private static final String smoOutputPath = PropertiesUtil.getProperty("matlab.output.path.smo");
    private static final String opcOutputPath = PropertiesUtil.getProperty("matlab.output.path.opc");
    private static final String pwoOutputPath = PropertiesUtil.getProperty("matlab.output.path.pwo");
    private static final String pdodOutputPath = PropertiesUtil.getProperty("matlab.output.path.pdod");


    @Autowired
    IDataPersistenceService iDataPersistenceService;

    @Autowired
    IFileService iFileService;

    @Autowired
    GDParameterSmoMapper gdParameterSmoMapper;

    @Autowired
    GDResultSmoMapper gdResultSmoMapper;

    @Autowired
    GDRunningStateMapper gdRunningStateMapper;

    @Autowired
    GDParameterOpcMapper gdParameterOpcMapper;

    @Autowired
    GDResultOpcMapper gdResultOpcMapper;

    @Autowired
    GDParameterPwoMapper gdParameterPwoMapper;

    @Autowired
    GDResultPwoMapper gdResultPwoMapper;

    @Autowired
    GDParameterPdodMapper gdParameterPdodMapper;

    @Autowired
    GDResultPdodMapper gdResultPdodMapper;


    public ServerResponse executeSmoSimulation(GDParameterSmo gdParameterSmo) {
        Subject subject = SecurityUtils.getSubject();
        String userNo = (String) subject.getPrincipal();
        gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_SMO, Const.RunningState.RUNNING);

        File outputDir = new File(smoOutputPath + userNo);
        if (!outputDir.exists()) {
            outputDir.mkdirs();
        }
        Date startTime = new Date();

        GDMatlab smo = null;
        try {
            smo = GDMatlabSingleton.getGdMatlab();
            smo.EUV_Pixelated_SMO_MAIN(4, gdParameterSmo.getCoreNum(), gdParameterSmo.getMaskDimension(),
                    gdParameterSmo.getPixelSize(), gdParameterSmo.getReflect(), gdParameterSmo.getAbsorb(),
                    gdParameterSmo.getShadowNear(), gdParameterSmo.getShadowFar(), gdParameterSmo.getWavelength(),
                    gdParameterSmo.getSigmaIn(), gdParameterSmo.getSigmaOut(),
                    gdParameterSmo.getNa(), gdParameterSmo.getRatio(), gdParameterSmo.getStepSource(),
                    gdParameterSmo.getOmegaSourceQua(), gdParameterSmo.getStepMaskMain(), gdParameterSmo.getStepMaskSraf(),
                    gdParameterSmo.getOmegaMaskQua(), gdParameterSmo.getMaxloopSmo(), gdParameterSmo.getThreshold(),
                    gdParameterSmo.getTr(), gdParameterSmo.getaSource(),
                    PropertiesUtil.getProperty("ftp.server.path") + Const.UPLOAD_FILE_PATH + File.separator + gdParameterSmo.getInputMask(),
                    outputDir + File.separator);
        } catch (MWException e) {
            e.printStackTrace();
            gdParameterSmoMapper.deleteByPrimaryKey(gdParameterSmo.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_SMO, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真失败");
        }

        Date endTime = new Date();

        LOGGER.info("存储仿真结果...");
        GDResultSmo gdResultSmo = new GDResultSmo();
        gdResultSmo.setParametersId(gdParameterSmo.getId());
        gdResultSmo.setUserNo(userNo);
        gdResultSmo = fillGDResultSmoFilepath(gdResultSmo);

        if (iDataPersistenceService.storeSmoResult(gdResultSmo) == null) {
            gdParameterSmoMapper.deleteByPrimaryKey(gdParameterSmo.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_SMO, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真结果存储失败");
        }

        LOGGER.info("存入历史记录...");
        GDSimulationRecord gdSimulationRecord = new GDSimulationRecord();

        gdSimulationRecord.setUserNo(userNo);
        gdSimulationRecord.setModuleName(Const.Module.MODULE_SMO);
        gdSimulationRecord.setParametersId(gdParameterSmo.getId());
        gdSimulationRecord.setResultId(gdResultSmo.getId());
        gdSimulationRecord.setStartTime(startTime);
        gdSimulationRecord.setEndTime(endTime);

        if (iDataPersistenceService.storeSimulationRecord(gdSimulationRecord) == null) {
            gdParameterSmoMapper.deleteByPrimaryKey(gdParameterSmo.getId());
            gdResultSmoMapper.deleteByPrimaryKey(gdResultSmo.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_SMO, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真记录存储失败");
        }

        gdRunningStateMapper.executeSuccessResetAndPlus(userNo, Const.Module.MODULE_SMO, Const.RunningState.IDLE);
        return ServerResponse.createBySuccessCodeMessage(ResponseCode.FINISHED.getCode(), "仿真成功", gdResultSmo);
    }

    private GDResultSmo fillGDResultSmoFilepath(GDResultSmo gdResultSmo) {
        String sourcePath = smoOutputPath + gdResultSmo.getUserNo() + File.separator;
        gdResultSmo.setErrorMat(iFileService
                .uploadMatlabOutputFile(Const.SmoMatlabOutputFilename.SMO_Error_Mat, sourcePath, Const.RESULT_PATH_SMO));
        gdResultSmo.setErrorConvergencePng(iFileService
                .uploadMatlabOutputFile(Const.SmoMatlabOutputFilename.SMO_Error_Convergence_Png, sourcePath, Const.RESULT_PATH_SMO));
        gdResultSmo.setErrorConvergenceWeightPng(iFileService
                .uploadMatlabOutputFile(Const.SmoMatlabOutputFilename.SMO_Error_Convergence_Weight_Png, sourcePath, Const.RESULT_PATH_SMO));
        gdResultSmo.setErrorWeightMat(iFileService
                .uploadMatlabOutputFile(Const.SmoMatlabOutputFilename.SMO_Error_Weight_Mat, sourcePath, Const.RESULT_PATH_SMO));
        gdResultSmo.setMaskPatternPng(iFileService
                .uploadMatlabOutputFile(Const.SmoMatlabOutputFilename.SMO_Mask_Pattern_Png, sourcePath, Const.RESULT_PATH_SMO));
        gdResultSmo.setMaskPatternMat(iFileService
                .uploadMatlabOutputFile(Const.SmoMatlabOutputFilename.SMO_Mask_Pattern_Mat, sourcePath, Const.RESULT_PATH_SMO));
        gdResultSmo.setPrintImageMat(iFileService
                .uploadMatlabOutputFile(Const.SmoMatlabOutputFilename.SMO_Print_Image_Mat, sourcePath, Const.RESULT_PATH_SMO));
        gdResultSmo.setPrintImagePng(iFileService
                .uploadMatlabOutputFile(Const.SmoMatlabOutputFilename.SMO_Print_Image_Png, sourcePath, Const.RESULT_PATH_SMO));
        gdResultSmo.setSourcePatternMat(iFileService
                .uploadMatlabOutputFile(Const.SmoMatlabOutputFilename.SMO_Source_Pattern_Mat, sourcePath, Const.RESULT_PATH_SMO));
        gdResultSmo.setSourcePatternPng(iFileService
                .uploadMatlabOutputFile(Const.SmoMatlabOutputFilename.SMO_Source_Pattern_Png, sourcePath, Const.RESULT_PATH_SMO));

        return gdResultSmo;
    }


    public ServerResponse executeOpcSimulation(GDParameterOpc gdParameterOpc) {
        Subject subject = SecurityUtils.getSubject();
        String userNo = (String) subject.getPrincipal();
        gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_OPC, Const.RunningState.RUNNING);

        File outputDir = new File(opcOutputPath + userNo);
        if (!outputDir.exists()) {
            outputDir.mkdirs();
        }
        Date startTime = new Date();

        GDMatlab opc = null;
        try {
            opc = GDMatlabSingleton.getGdMatlab();
            opc.EUV_OPC_main(4, gdParameterOpc.getCoreNum(), gdParameterOpc.getMaskDimension(),
                    gdParameterOpc.getPixelSize(), gdParameterOpc.getReflect(), gdParameterOpc.getAbsorb(),
                    gdParameterOpc.getShadowNear(), gdParameterOpc.getShadowFar(), gdParameterOpc.getWavelength(),
                    gdParameterOpc.getSigmaIn(), gdParameterOpc.getSigmaOut(), gdParameterOpc.getNa(),
                    gdParameterOpc.getRatio(), gdParameterOpc.getStepMain(), gdParameterOpc.getStepSraf(),
                    gdParameterOpc.getOmegaQua(), gdParameterOpc.getMaxloopOpc(), gdParameterOpc.getThreshold(),
                    gdParameterOpc.getTr(), gdParameterOpc.getaSource(),
                    PropertiesUtil.getProperty("ftp.server.path") + Const.UPLOAD_FILE_PATH + File.separator + gdParameterOpc.getInputMask(),
                    outputDir + File.separator);

        } catch (MWException e) {
            e.printStackTrace();
            gdParameterOpcMapper.deleteByPrimaryKey(gdParameterOpc.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_OPC, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真失败");
        }


        Date endTime = new Date();

        LOGGER.info("存储仿真结果...");
        GDResultOpc gdResultOpc = new GDResultOpc();
        gdResultOpc.setParametersId(gdParameterOpc.getId());
        gdResultOpc.setUserNo(userNo);
        gdResultOpc = fillGDResultOpcFilepath(gdResultOpc);

        if (iDataPersistenceService.storeOpcResult(gdResultOpc) == null) {
            gdParameterOpcMapper.deleteByPrimaryKey(gdParameterOpc.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_OPC, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真结果存储失败");
        }

        LOGGER.info("存入历史记录...");
        GDSimulationRecord gdSimulationRecord = new GDSimulationRecord();

        gdSimulationRecord.setUserNo(userNo);
        gdSimulationRecord.setModuleName(Const.Module.MODULE_OPC);
        gdSimulationRecord.setParametersId(gdParameterOpc.getId());
        gdSimulationRecord.setResultId(gdResultOpc.getId());
        gdSimulationRecord.setStartTime(startTime);
        gdSimulationRecord.setEndTime(endTime);

        if (iDataPersistenceService.storeSimulationRecord(gdSimulationRecord) == null) {
            gdParameterOpcMapper.deleteByPrimaryKey(gdParameterOpc.getId());
            gdResultOpcMapper.deleteByPrimaryKey(gdResultOpc.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_OPC, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真记录存储失败");
        }

        gdRunningStateMapper.executeSuccessResetAndPlus(userNo, Const.Module.MODULE_OPC, Const.RunningState.IDLE);
        return ServerResponse.createBySuccessCodeMessage(ResponseCode.FINISHED.getCode(), "仿真成功", gdResultOpc);
    }

    private GDResultOpc fillGDResultOpcFilepath(GDResultOpc gdResultOpc) {
        String sourcePath = opcOutputPath + gdResultOpc.getUserNo() + File.separator;
        gdResultOpc.setErrorMat(iFileService
                .uploadMatlabOutputFile(Const.OpcMatlabOutputFilename.OPC_Error_Mat, sourcePath, Const.RESULT_PATH_OPC));
        gdResultOpc.setErrorConvergencePng(iFileService
                .uploadMatlabOutputFile(Const.OpcMatlabOutputFilename.OPC_Error_Convergence_Png, sourcePath, Const.RESULT_PATH_OPC));
        gdResultOpc.setErrorConvergenceWeightPng(iFileService
                .uploadMatlabOutputFile(Const.OpcMatlabOutputFilename.OPC_Error_Convergence_Weight_Png, sourcePath, Const.RESULT_PATH_OPC));
        gdResultOpc.setErrorWeightMat(iFileService
                .uploadMatlabOutputFile(Const.OpcMatlabOutputFilename.OPC_Error_Weight_Mat, sourcePath, Const.RESULT_PATH_OPC));
        gdResultOpc.setMaskPatternPng(iFileService
                .uploadMatlabOutputFile(Const.OpcMatlabOutputFilename.OPC_Mask_Pattern_Png, sourcePath, Const.RESULT_PATH_OPC));
        gdResultOpc.setMaskPatternMat(iFileService
                .uploadMatlabOutputFile(Const.OpcMatlabOutputFilename.OPC_Mask_Pattern_Mat, sourcePath, Const.RESULT_PATH_OPC));
        gdResultOpc.setPrintImageMat(iFileService
                .uploadMatlabOutputFile(Const.OpcMatlabOutputFilename.OPC_Print_Image_Mat, sourcePath, Const.RESULT_PATH_OPC));
        gdResultOpc.setPrintImagePng(iFileService
                .uploadMatlabOutputFile(Const.OpcMatlabOutputFilename.OPC_Print_Image_Png, sourcePath, Const.RESULT_PATH_OPC));
        gdResultOpc.setSourcePatternMat(iFileService
                .uploadMatlabOutputFile(Const.OpcMatlabOutputFilename.OPC_Source_Pattern_Mat, sourcePath, Const.RESULT_PATH_OPC));
        gdResultOpc.setSourcePatternPng(iFileService
                .uploadMatlabOutputFile(Const.OpcMatlabOutputFilename.OPC_Source_Pattern_Png, sourcePath, Const.RESULT_PATH_OPC));

        return gdResultOpc;
    }

    public ServerResponse executePwoSimulation(GDParameterPwo gdParameterPwo) {
        Subject subject = SecurityUtils.getSubject();
        String userNo = (String) subject.getPrincipal();
        gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_SMPWO, Const.RunningState.RUNNING);

        File outputDir = new File(pwoOutputPath + userNo);
        if (!outputDir.exists()) {
            outputDir.mkdirs();
        }
        Date startTime = new Date();

        GDMatlab pwo = null;
        try {
            pwo = GDMatlabSingleton.getGdMatlab();
            pwo.SMPWO_main(3, gdParameterPwo.getCoreNum(), gdParameterPwo.getWavelength(), gdParameterPwo.getNa(),
                    gdParameterPwo.getRatio(), gdParameterPwo.getPolarization(), gdParameterPwo.getRefractiveIndex(),
                    gdParameterPwo.getPixel(), gdParameterPwo.getStepPupil(), gdParameterPwo.getOmegaPupil(),
                    gdParameterPwo.getZterm(), gdParameterPwo.getResistSlope(), gdParameterPwo.getThreshold(),
                    gdParameterPwo.getDimension(), gdParameterPwo.getMaxloop(),
                    PropertiesUtil.getProperty("ftp.server.path") + Const.UPLOAD_FILE_PATH + File.separator + gdParameterPwo.getInputData(),
                    outputDir + File.separator);

        } catch (MWException e) {
            e.printStackTrace();
            gdParameterPwoMapper.deleteByPrimaryKey(gdParameterPwo.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_SMPWO, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真失败");
        }

        Date endTime = new Date();

        LOGGER.info("存储仿真结果...");
        GDResultPwo gdResultPwo = new GDResultPwo();
        gdResultPwo.setParametersId(gdParameterPwo.getId());
        gdResultPwo.setUserNo(userNo);
        gdResultPwo = fillGDResultPwoFilepath(gdResultPwo);

        if (iDataPersistenceService.storePwoResult(gdResultPwo) == null) {
            gdParameterPwoMapper.deleteByPrimaryKey(gdParameterPwo.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_SMPWO, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真结果存储失败");
        }

        LOGGER.info("存入历史记录...");
        GDSimulationRecord gdSimulationRecord = new GDSimulationRecord();

        gdSimulationRecord.setUserNo(userNo);
        gdSimulationRecord.setModuleName(Const.Module.MODULE_SMPWO);
        gdSimulationRecord.setParametersId(gdParameterPwo.getId());
        gdSimulationRecord.setResultId(gdResultPwo.getId());
        gdSimulationRecord.setStartTime(startTime);
        gdSimulationRecord.setEndTime(endTime);

        if (iDataPersistenceService.storeSimulationRecord(gdSimulationRecord) == null) {
            gdParameterPwoMapper.deleteByPrimaryKey(gdParameterPwo.getId());
            gdResultPwoMapper.deleteByPrimaryKey(gdResultPwo.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_SMPWO, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真记录存储失败");
        }

        gdRunningStateMapper.executeSuccessResetAndPlus(userNo, Const.Module.MODULE_SMPWO, Const.RunningState.IDLE);
        return ServerResponse.createBySuccessCodeMessage(ResponseCode.FINISHED.getCode(), "仿真成功", gdResultPwo);

    }

    private GDResultPwo fillGDResultPwoFilepath(GDResultPwo gdResultPwo) {
        String sourcePath = pwoOutputPath + gdResultPwo.getUserNo() + File.separator;
        gdResultPwo.setErrorMat(iFileService
                .uploadMatlabOutputFile(Const.PwoMatlabOutputFilename.PWO_Error_Mat, sourcePath, Const.RESULT_PATH_PWO));
        gdResultPwo.setErrorConvergencePupilPng(iFileService
                .uploadMatlabOutputFile(Const.PwoMatlabOutputFilename.PWO_Error_Convergence_Pupil_Png, sourcePath, Const.RESULT_PATH_PWO));
        gdResultPwo.setMaskPatternMat(iFileService
                .uploadMatlabOutputFile(Const.PwoMatlabOutputFilename.PWO_Mask_Pattern_Mat, sourcePath, Const.RESULT_PATH_PWO));
        gdResultPwo.setMaskPatternPng(iFileService
                .uploadMatlabOutputFile(Const.PwoMatlabOutputFilename.PWO_Mask_Pattern_Png, sourcePath, Const.RESULT_PATH_PWO));
        gdResultPwo.setPrintImagePng(iFileService
                .uploadMatlabOutputFile(Const.PwoMatlabOutputFilename.PWO_Print_Image_Png, sourcePath, Const.RESULT_PATH_PWO));
        gdResultPwo.setSourcePatternMat(iFileService
                .uploadMatlabOutputFile(Const.PwoMatlabOutputFilename.PWO_Source_Pattern_Mat, sourcePath, Const.RESULT_PATH_PWO));
        gdResultPwo.setSourcePatternPng(iFileService
                .uploadMatlabOutputFile(Const.PwoMatlabOutputFilename.PWO_Source_Pattern_Png, sourcePath, Const.RESULT_PATH_PWO));
        gdResultPwo.setTargetPatternMat(iFileService
                .uploadMatlabOutputFile(Const.PwoMatlabOutputFilename.PWO_Target_Pattern_Mat, sourcePath, Const.RESULT_PATH_PWO));
        gdResultPwo.setTargetPatternPng(iFileService
                .uploadMatlabOutputFile(Const.PwoMatlabOutputFilename.PWO_Target_Pattern_Png, sourcePath, Const.RESULT_PATH_PWO));
        gdResultPwo.setTheitaPupilPng(iFileService
                .uploadMatlabOutputFile(Const.PwoMatlabOutputFilename.PWO_Theita_Pupil_Png, sourcePath, Const.RESULT_PATH_PWO));

        return gdResultPwo;
    }

    public ServerResponse executePdodSimulation(GDParameterPdod gdParameterPdod) {
        Subject subject = SecurityUtils.getSubject();
        String userNo = (String) subject.getPrincipal();
        gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_PDOD, Const.RunningState.RUNNING);

        File outputDir = new File(pdodOutputPath + userNo);
        if (!outputDir.exists()) {
            outputDir.mkdirs();
        }
        Date startTime = new Date();

        GDMatlab pdod = null;
        try {
            pdod = GDMatlabSingleton.getGdMatlab();
            pdod.Polarizationaberration(8,
                    PropertiesUtil.getProperty("ftp.server.path") + Const.UPLOAD_FILE_PATH + File.separator + gdParameterPdod.getTxtIxSt(),
                    PropertiesUtil.getProperty("ftp.server.path") + Const.UPLOAD_FILE_PATH + File.separator + gdParameterPdod.getTxtIxNd(),
                    outputDir + File.separator);

        } catch (MWException e) {
            e.printStackTrace();
            gdParameterPdodMapper.deleteByPrimaryKey(gdParameterPdod.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_PDOD, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真失败");
        }

        Date endTime = new Date();

        LOGGER.info("存储仿真结果...");
        GDResultPdod gdResultPdod = new GDResultPdod();
        gdResultPdod.setParametersId(gdParameterPdod.getId());
        gdResultPdod.setUserNo(userNo);

        gdResultPdod = fillGDResultPdodFilepath(gdResultPdod);

        if (iDataPersistenceService.storePdodResult(gdResultPdod) == null) {
            gdParameterPdodMapper.deleteByPrimaryKey(gdParameterPdod.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_PDOD, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真结果存储失败");
        }

        LOGGER.info("存入历史记录...");
        GDSimulationRecord gdSimulationRecord = new GDSimulationRecord();

        gdSimulationRecord.setUserNo(userNo);
        gdSimulationRecord.setModuleName(Const.Module.MODULE_PDOD);
        gdSimulationRecord.setParametersId(gdParameterPdod.getId());
        gdSimulationRecord.setResultId(gdResultPdod.getId());
        gdSimulationRecord.setStartTime(startTime);
        gdSimulationRecord.setEndTime(endTime);

        if (iDataPersistenceService.storeSimulationRecord(gdSimulationRecord) == null) {
            gdParameterPdodMapper.deleteByPrimaryKey(gdParameterPdod.getId());
            gdResultPdodMapper.deleteByPrimaryKey(gdResultPdod.getId());
            gdRunningStateMapper.updateByUserNoAndModuleName(userNo, Const.Module.MODULE_PDOD, Const.RunningState.IDLE);
            return ServerResponse.createByErrorMessage("仿真记录存储失败");
        }

        gdRunningStateMapper.executeSuccessResetAndPlus(userNo, Const.Module.MODULE_PDOD, Const.RunningState.IDLE);
        return ServerResponse.createBySuccessCodeMessage(ResponseCode.FINISHED.getCode(), "仿真成功", gdResultPdod);
    }

    private GDResultPdod fillGDResultPdodFilepath(GDResultPdod gdResultPdod) {
        String sourcePath = pdodOutputPath + gdResultPdod.getUserNo() + File.separator;

        gdResultPdod.setImjxxMat(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ImJxx_Mat, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setImjxxPng(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ImJxx_Png, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setImjxyMat(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ImJxy_Mat, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setImjxyPng(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ImJxy_Png, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setImjyxMat(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ImJyx_Mat, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setImjyxPng(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ImJyx_Png, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setImjyyMat(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ImJyy_Mat, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setImjyyPng(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ImJyy_Png, sourcePath, Const.RESULT_PATH_PDOD));

        gdResultPdod.setRejxxMat(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ReJxx_Mat, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setRejxxPng(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ReJxx_Png, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setRejxyMat(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ReJxy_Mat, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setRejxyPng(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ReJxy_Png, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setRejyxMat(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ReJyx_Mat, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setRejyxPng(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ReJyx_Png, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setRejyyMat(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ReJyy_Mat, sourcePath, Const.RESULT_PATH_PDOD));
        gdResultPdod.setRejyyPng(iFileService.uploadMatlabOutputFile(Const.PdodMatlabOutputFilename.PDOD_ReJyy_Png, sourcePath, Const.RESULT_PATH_PDOD));

        return gdResultPdod;
    }
}
