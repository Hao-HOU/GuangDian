package bit.gd.pojo;

import java.util.Date;

public class GDParameterOpc {
    private Integer id;

    private String userNo;

    private Double maskDimension;

    private Double pixelSize;

    private Double reflect;

    private Double absorb;

    private Double shadowNear;

    private Double shadowFar;

    private Double wavelength;

    private Double sigmaIn;

    private Double sigmaOut;

    private Double tis;

    private Double na;

    private Double ratio;

    private Double stepMain;

    private Double stepSraf;

    private Double omegaQua;

    private Double maxloopOpc;

    private Double threshold;

    private Double tr;

    private Double aSource;

    private Double coreNum;

    private String inputMask;

    private String inputMaskHash;

    private Date createTime;

    private Date updateTime;

    public GDParameterOpc(Integer id, String userNo, Double maskDimension, Double pixelSize, Double reflect, Double absorb, Double shadowNear, Double shadowFar, Double wavelength, Double sigmaIn, Double sigmaOut, Double tis, Double na, Double ratio, Double stepMain, Double stepSraf, Double omegaQua, Double maxloopOpc, Double threshold, Double tr, Double aSource, Double coreNum, String inputMask, String inputMaskHash, Date createTime, Date updateTime) {
        this.id = id;
        this.userNo = userNo;
        this.maskDimension = maskDimension;
        this.pixelSize = pixelSize;
        this.reflect = reflect;
        this.absorb = absorb;
        this.shadowNear = shadowNear;
        this.shadowFar = shadowFar;
        this.wavelength = wavelength;
        this.sigmaIn = sigmaIn;
        this.sigmaOut = sigmaOut;
        this.tis = tis;
        this.na = na;
        this.ratio = ratio;
        this.stepMain = stepMain;
        this.stepSraf = stepSraf;
        this.omegaQua = omegaQua;
        this.maxloopOpc = maxloopOpc;
        this.threshold = threshold;
        this.tr = tr;
        this.aSource = aSource;
        this.coreNum = coreNum;
        this.inputMask = inputMask;
        this.inputMaskHash = inputMaskHash;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public GDParameterOpc() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserNo() {
        return userNo;
    }

    public void setUserNo(String userNo) {
        this.userNo = userNo == null ? null : userNo.trim();
    }

    public Double getMaskDimension() {
        return maskDimension;
    }

    public void setMaskDimension(Double maskDimension) {
        this.maskDimension = maskDimension;
    }

    public Double getPixelSize() {
        return pixelSize;
    }

    public void setPixelSize(Double pixelSize) {
        this.pixelSize = pixelSize;
    }

    public Double getReflect() {
        return reflect;
    }

    public void setReflect(Double reflect) {
        this.reflect = reflect;
    }

    public Double getAbsorb() {
        return absorb;
    }

    public void setAbsorb(Double absorb) {
        this.absorb = absorb;
    }

    public Double getShadowNear() {
        return shadowNear;
    }

    public void setShadowNear(Double shadowNear) {
        this.shadowNear = shadowNear;
    }

    public Double getShadowFar() {
        return shadowFar;
    }

    public void setShadowFar(Double shadowFar) {
        this.shadowFar = shadowFar;
    }

    public Double getWavelength() {
        return wavelength;
    }

    public void setWavelength(Double wavelength) {
        this.wavelength = wavelength;
    }

    public Double getSigmaIn() {
        return sigmaIn;
    }

    public void setSigmaIn(Double sigmaIn) {
        this.sigmaIn = sigmaIn;
    }

    public Double getSigmaOut() {
        return sigmaOut;
    }

    public void setSigmaOut(Double sigmaOut) {
        this.sigmaOut = sigmaOut;
    }

    public Double getTis() {
        return tis;
    }

    public void setTis(Double tis) {
        this.tis = tis;
    }

    public Double getNa() {
        return na;
    }

    public void setNa(Double na) {
        this.na = na;
    }

    public Double getRatio() {
        return ratio;
    }

    public void setRatio(Double ratio) {
        this.ratio = ratio;
    }

    public Double getStepMain() {
        return stepMain;
    }

    public void setStepMain(Double stepMain) {
        this.stepMain = stepMain;
    }

    public Double getStepSraf() {
        return stepSraf;
    }

    public void setStepSraf(Double stepSraf) {
        this.stepSraf = stepSraf;
    }

    public Double getOmegaQua() {
        return omegaQua;
    }

    public void setOmegaQua(Double omegaQua) {
        this.omegaQua = omegaQua;
    }

    public Double getMaxloopOpc() {
        return maxloopOpc;
    }

    public void setMaxloopOpc(Double maxloopOpc) {
        this.maxloopOpc = maxloopOpc;
    }

    public Double getThreshold() {
        return threshold;
    }

    public void setThreshold(Double threshold) {
        this.threshold = threshold;
    }

    public Double getTr() {
        return tr;
    }

    public void setTr(Double tr) {
        this.tr = tr;
    }

    public Double getaSource() {
        return aSource;
    }

    public void setaSource(Double aSource) {
        this.aSource = aSource;
    }

    public Double getCoreNum() {
        return coreNum;
    }

    public void setCoreNum(Double coreNum) {
        this.coreNum = coreNum;
    }

    public String getInputMask() {
        return inputMask;
    }

    public void setInputMask(String inputMask) {
        this.inputMask = inputMask == null ? null : inputMask.trim();
    }

    public String getInputMaskHash() {
        return inputMaskHash;
    }

    public void setInputMaskHash(String inputMaskHash) {
        this.inputMaskHash = inputMaskHash == null ? null : inputMaskHash.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}