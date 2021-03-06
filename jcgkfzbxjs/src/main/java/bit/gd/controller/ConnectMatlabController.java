package bit.gd.controller;

import bit.gd.common.Const;
import bit.gd.common.ResponseCode;
import bit.gd.common.ServerResponse;
import bit.gd.pojo.GDParameterOpc;
import bit.gd.pojo.GDParameterPdod;
import bit.gd.pojo.GDParameterPwo;
import bit.gd.pojo.GDParameterSmo;
import bit.gd.service.IConnectMatlabService;
import bit.gd.service.IDataPersistenceService;
import bit.gd.util.PdodTXTUtil;
import bit.gd.vo.FilenameAndHashVo;
import bit.gd.vo.LightIntensity;
import bit.gd.vo.PdodRequestVo;
import bit.gd.vo.SimulatedVo;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Hao HOU on 2018/3/6.
 */
@Controller
@RequestMapping("/api")
public class ConnectMatlabController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ConnectMatlabController.class);

    @Autowired
    IConnectMatlabService iConnectMatlabService;

    @Autowired
    IDataPersistenceService iDataPersistenceService;

    @RequestMapping("smo_simulate.do")
    @ResponseBody
    public ServerResponse smoSimulate(@RequestBody GDParameterSmo gdParameterSmo) {
        Subject subject = SecurityUtils.getSubject();
        String userNo = (String) subject.getPrincipal();
        if (subject.hasRole(Const.Role.ROLE_ADMIN) || subject.hasRole(Const.Role.ROLE_SMO)) {
            gdParameterSmo.setUserNo(userNo);

            if (iDataPersistenceService.storeSmoParameters(gdParameterSmo) != null) {
                LOGGER.info("用户[{}]运行SMO模块所用参数存储成功，仿真开始...", userNo);
                return iConnectMatlabService.executeSmoSimulation(gdParameterSmo);
            } else {
                LOGGER.info("用户[{}]运行SMO模块所用参数存储失败", userNo);
                return ServerResponse.createByErrorMessage("参数存储失败，仿真不能开始");
            }
        } else {
            return ServerResponse.createByErrorMessage("无权限使用该模块，请联系管理员");
        }
    }

    @RequestMapping("smo_parameters_simulated.do")
    @ResponseBody
    public ServerResponse checkSmoParametersSimulated(@RequestBody GDParameterSmo gdParameterSmo) {
        Subject subject = SecurityUtils.getSubject();
        if (subject.hasRole(Const.Role.ROLE_ADMIN) || subject.hasRole(Const.Role.ROLE_SMO)) {
            GDParameterSmo existed = iDataPersistenceService.checkSmoParametersSimulated(gdParameterSmo);
            if (existed != null) {
                SimulatedVo simulatedVo = iDataPersistenceService.getSimulatedVo(Const.Module.MODULE_SMO, existed.getId());
                if (simulatedVo == null) {
                    return ServerResponse.createByErrorMessage("获取相同参数的历史仿真结果失败");
                }
                return ServerResponse.createBySuccessCodeMessage(ResponseCode.SIMULATED.getCode(),
                        "参数已仿真过", simulatedVo);
            } else {
                return ServerResponse.createBySuccessMessage("参数未仿真过");
            }
        } else {
            return ServerResponse.createByErrorMessage("无权限使用该模块，请联系管理员");
        }
    }

    @RequestMapping("opc_parameters_simulated.do")
    @ResponseBody
    public ServerResponse checkOpcParametersSimulated(@RequestBody GDParameterOpc gdParameterOpc) {
        Subject subject = SecurityUtils.getSubject();
        if (subject.hasRole(Const.Role.ROLE_ADMIN) || subject.hasRole(Const.Role.ROLE_OPC)) {
            GDParameterOpc existed = iDataPersistenceService.checkOpcParametersSimulated(gdParameterOpc);
            if (existed != null) {
                SimulatedVo simulatedVo = iDataPersistenceService.getSimulatedVo(Const.Module.MODULE_OPC, existed.getId());
                if (simulatedVo == null) {
                    return ServerResponse.createByErrorMessage("获取相同参数的历史仿真结果失败");
                }
                return ServerResponse.createBySuccessCodeMessage(ResponseCode.SIMULATED.getCode(),
                        "参数已仿真过", simulatedVo);
            } else {
                return ServerResponse.createBySuccessMessage("参数未仿真过");
            }
        } else {
            return ServerResponse.createByErrorMessage("无权限使用该模块，请联系管理员");
        }
    }

    @RequestMapping("opc_simulate.do")
    @ResponseBody
    public ServerResponse opcSimulate(@RequestBody GDParameterOpc gdParameterOpc) {
        Subject subject = SecurityUtils.getSubject();
        String userNo = (String) subject.getPrincipal();
        if (subject.hasRole(Const.Role.ROLE_ADMIN) || subject.hasRole(Const.Role.ROLE_OPC)) {
            gdParameterOpc.setUserNo(userNo);

            if (iDataPersistenceService.storeOpcParameters(gdParameterOpc) != null) {
                LOGGER.info("用户[{}]运行OPC模块所用参数存储成功，仿真开始...", userNo);
                return iConnectMatlabService.executeOpcSimulation(gdParameterOpc);
            } else {
                LOGGER.info("用户[{}]运行OPC模块所用参数存储失败", userNo);
                return ServerResponse.createByErrorMessage("参数存储失败，仿真不能开始");
            }
        } else {
            return ServerResponse.createByErrorMessage("无权限使用该模块，请联系管理员");
        }
    }

    @RequestMapping("pwo_parameters_simulated.do")
    @ResponseBody
    public ServerResponse checkPwoParametersSimulated(@RequestBody GDParameterPwo gdParameterPwo) {
        Subject subject = SecurityUtils.getSubject();
        if (subject.hasRole(Const.Role.ROLE_ADMIN) || subject.hasRole(Const.Role.ROLE_SMPWO)) {
            GDParameterPwo existed = iDataPersistenceService.checkPwoParametersSimulated(gdParameterPwo);
            if (existed != null) {
                SimulatedVo simulatedVo = iDataPersistenceService.getSimulatedVo(Const.Module.MODULE_SMPWO, existed.getId());
                if (simulatedVo == null) {
                    return ServerResponse.createByErrorMessage("获取相同参数的历史仿真结果失败");
                }
                return ServerResponse.createBySuccessCodeMessage(ResponseCode.SIMULATED.getCode(),
                        "参数已仿真过", simulatedVo);
            } else {
                return ServerResponse.createBySuccessMessage("参数未仿真过");
            }
        } else {
            return ServerResponse.createByErrorMessage("无权限使用该模块，请联系管理员");
        }
    }

    @RequestMapping("pwo_simulate.do")
    @ResponseBody
    public ServerResponse pwoSimulate(@RequestBody GDParameterPwo gdParameterPwo) {
        Subject subject = SecurityUtils.getSubject();
        String userNo = (String) subject.getPrincipal();
        if (subject.hasRole(Const.Role.ROLE_ADMIN) || subject.hasRole(Const.Role.ROLE_SMPWO)) {
            gdParameterPwo.setUserNo(userNo);

            if (iDataPersistenceService.storePwoParameters(gdParameterPwo) != null) {
                LOGGER.info("用户[{}]运行PWO模块所用参数存储成功，仿真开始...", userNo);
                return iConnectMatlabService.executePwoSimulation(gdParameterPwo);
            } else {
                LOGGER.info("用户[{}]运行PWO模块所用参数存储失败", userNo);
                return ServerResponse.createByErrorMessage("参数存储失败，仿真不能开始");
            }
        } else {
            return ServerResponse.createByErrorMessage("无权限使用该模块，请联系管理员");
        }
    }

    @RequestMapping("pdod_parameters_simulated.do")
    @ResponseBody
    public ServerResponse checkPdodParametersSimulated(@RequestBody PdodRequestVo pdodRequestVo) {
        Subject subject = SecurityUtils.getSubject();
        if (subject.hasRole(Const.Role.ROLE_ADMIN) || subject.hasRole(Const.Role.ROLE_PDOD)) {
            GDParameterPdod gdParameterPdod = new GDParameterPdod();
            FilenameAndHashVo xFilenameAndHashVo = PdodTXTUtil
                    .writeNumbersToTXT(pdodRequestVo.getxFileName(), pdodRequestVo.getxLightIntensity());
            FilenameAndHashVo yFilenameAndHashVo = PdodTXTUtil
                    .writeNumbersToTXT(pdodRequestVo.getyFileName(), pdodRequestVo.getyLightIntensity());

            gdParameterPdod.setTxtIxSt(xFilenameAndHashVo.getTargetFileName());
            gdParameterPdod.setTxtIxStHash(xFilenameAndHashVo.getFileHash());

            gdParameterPdod.setTxtIxNd(yFilenameAndHashVo.getTargetFileName());
            gdParameterPdod.setTxtIxNdHash(yFilenameAndHashVo.getFileHash());

            GDParameterPdod existed = iDataPersistenceService.checkPdodParametersSimulated(gdParameterPdod);
            if (existed != null) {
                SimulatedVo simulatedVo = iDataPersistenceService.getSimulatedVo(Const.Module.MODULE_PDOD, existed.getId());
                if (simulatedVo == null) {
                    return ServerResponse.createByErrorMessage("获取相同参数的历史仿真结果失败");
                }
                return ServerResponse.createBySuccessCodeMessage(ResponseCode.SIMULATED.getCode(),
                        "参数已仿真过", simulatedVo);
            } else {
                return ServerResponse.createBySuccessMessage("参数未仿真过");
            }
        } else {
            return ServerResponse.createByErrorMessage("无权限使用该模块，请联系管理员");
        }
    }

    @RequestMapping("pdod_simulate.do")
    @ResponseBody
    public ServerResponse pdodSimulate(@RequestBody PdodRequestVo pdodRequestVo) {
        Subject subject = SecurityUtils.getSubject();
        String userNo = (String) subject.getPrincipal();
        if (subject.hasRole(Const.Role.ROLE_ADMIN) || subject.hasRole(Const.Role.ROLE_PDOD)) {
            GDParameterPdod gdParameterPdod = new GDParameterPdod();
            FilenameAndHashVo xFilenameAndHashVo = PdodTXTUtil
                    .writeNumbersToTXT(pdodRequestVo.getxFileName(), pdodRequestVo.getxLightIntensity());
            FilenameAndHashVo yFilenameAndHashVo = PdodTXTUtil
                    .writeNumbersToTXT(pdodRequestVo.getyFileName(), pdodRequestVo.getyLightIntensity());

            gdParameterPdod.setTxtIxSt(xFilenameAndHashVo.getTargetFileName());
            gdParameterPdod.setTxtIxStHash(xFilenameAndHashVo.getFileHash());

            gdParameterPdod.setTxtIxNd(yFilenameAndHashVo.getTargetFileName());
            gdParameterPdod.setTxtIxNdHash(yFilenameAndHashVo.getFileHash());

            gdParameterPdod.setUserNo(userNo);

            if (iDataPersistenceService.storePdodParameters(gdParameterPdod) != null) {
                LOGGER.info("用户[{}]运行PDOD模块所用参数存储成功，仿真开始...", userNo);
                return iConnectMatlabService.executePdodSimulation(gdParameterPdod);
            } else {
                LOGGER.info("用户[{}]运行PDOD模块所用参数存储失败", userNo);
                return ServerResponse.createByErrorMessage("参数存储失败，仿真不能开始");
            }
        } else {
            return ServerResponse.createByErrorMessage("无权限使用该模块，请联系管理员");
        }
    }
}
