package bit.gd.pojo;

import java.util.Date;

public class GDResultPdod {
    private Integer id;

    private Integer parametersId;

    private String userNo;

    private String imjxxPng;

    private String imjxyPng;

    private String imjyxPng;

    private String imjyyPng;

    private String rejxxPng;

    private String rejxyPng;

    private String rejyxPng;

    private String rejyyPng;

    private String imjxxMat;

    private String imjxyMat;

    private String imjyxMat;

    private String imjyyMat;

    private String rejxxMat;

    private String rejxyMat;

    private String rejyxMat;

    private String rejyyMat;

    private Date createTime;

    public GDResultPdod(Integer id, Integer parametersId, String userNo, String imjxxPng, String imjxyPng, String imjyxPng, String imjyyPng, String rejxxPng, String rejxyPng, String rejyxPng, String rejyyPng, String imjxxMat, String imjxyMat, String imjyxMat, String imjyyMat, String rejxxMat, String rejxyMat, String rejyxMat, String rejyyMat, Date createTime) {
        this.id = id;
        this.parametersId = parametersId;
        this.userNo = userNo;
        this.imjxxPng = imjxxPng;
        this.imjxyPng = imjxyPng;
        this.imjyxPng = imjyxPng;
        this.imjyyPng = imjyyPng;
        this.rejxxPng = rejxxPng;
        this.rejxyPng = rejxyPng;
        this.rejyxPng = rejyxPng;
        this.rejyyPng = rejyyPng;
        this.imjxxMat = imjxxMat;
        this.imjxyMat = imjxyMat;
        this.imjyxMat = imjyxMat;
        this.imjyyMat = imjyyMat;
        this.rejxxMat = rejxxMat;
        this.rejxyMat = rejxyMat;
        this.rejyxMat = rejyxMat;
        this.rejyyMat = rejyyMat;
        this.createTime = createTime;
    }

    public GDResultPdod() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getParametersId() {
        return parametersId;
    }

    public void setParametersId(Integer parametersId) {
        this.parametersId = parametersId;
    }

    public String getUserNo() {
        return userNo;
    }

    public void setUserNo(String userNo) {
        this.userNo = userNo == null ? null : userNo.trim();
    }

    public String getImjxxPng() {
        return imjxxPng;
    }

    public void setImjxxPng(String imjxxPng) {
        this.imjxxPng = imjxxPng == null ? null : imjxxPng.trim();
    }

    public String getImjxyPng() {
        return imjxyPng;
    }

    public void setImjxyPng(String imjxyPng) {
        this.imjxyPng = imjxyPng == null ? null : imjxyPng.trim();
    }

    public String getImjyxPng() {
        return imjyxPng;
    }

    public void setImjyxPng(String imjyxPng) {
        this.imjyxPng = imjyxPng == null ? null : imjyxPng.trim();
    }

    public String getImjyyPng() {
        return imjyyPng;
    }

    public void setImjyyPng(String imjyyPng) {
        this.imjyyPng = imjyyPng == null ? null : imjyyPng.trim();
    }

    public String getRejxxPng() {
        return rejxxPng;
    }

    public void setRejxxPng(String rejxxPng) {
        this.rejxxPng = rejxxPng == null ? null : rejxxPng.trim();
    }

    public String getRejxyPng() {
        return rejxyPng;
    }

    public void setRejxyPng(String rejxyPng) {
        this.rejxyPng = rejxyPng == null ? null : rejxyPng.trim();
    }

    public String getRejyxPng() {
        return rejyxPng;
    }

    public void setRejyxPng(String rejyxPng) {
        this.rejyxPng = rejyxPng == null ? null : rejyxPng.trim();
    }

    public String getRejyyPng() {
        return rejyyPng;
    }

    public void setRejyyPng(String rejyyPng) {
        this.rejyyPng = rejyyPng == null ? null : rejyyPng.trim();
    }

    public String getImjxxMat() {
        return imjxxMat;
    }

    public void setImjxxMat(String imjxxMat) {
        this.imjxxMat = imjxxMat == null ? null : imjxxMat.trim();
    }

    public String getImjxyMat() {
        return imjxyMat;
    }

    public void setImjxyMat(String imjxyMat) {
        this.imjxyMat = imjxyMat == null ? null : imjxyMat.trim();
    }

    public String getImjyxMat() {
        return imjyxMat;
    }

    public void setImjyxMat(String imjyxMat) {
        this.imjyxMat = imjyxMat == null ? null : imjyxMat.trim();
    }

    public String getImjyyMat() {
        return imjyyMat;
    }

    public void setImjyyMat(String imjyyMat) {
        this.imjyyMat = imjyyMat == null ? null : imjyyMat.trim();
    }

    public String getRejxxMat() {
        return rejxxMat;
    }

    public void setRejxxMat(String rejxxMat) {
        this.rejxxMat = rejxxMat == null ? null : rejxxMat.trim();
    }

    public String getRejxyMat() {
        return rejxyMat;
    }

    public void setRejxyMat(String rejxyMat) {
        this.rejxyMat = rejxyMat == null ? null : rejxyMat.trim();
    }

    public String getRejyxMat() {
        return rejyxMat;
    }

    public void setRejyxMat(String rejyxMat) {
        this.rejyxMat = rejyxMat == null ? null : rejyxMat.trim();
    }

    public String getRejyyMat() {
        return rejyyMat;
    }

    public void setRejyyMat(String rejyyMat) {
        this.rejyyMat = rejyyMat == null ? null : rejyyMat.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}