package bit.gd.pojo;

import java.util.Date;

public class GDParameterPdod {
    private Integer id;

    private String userNo;

    private String txtIxSt;

    private String txtIxStHash;

    private String txtIxNd;

    private String txtIxNdHash;

    private Date createTime;

    private Date updateTime;

    public GDParameterPdod(Integer id, String userNo, String txtIxSt, String txtIxStHash, String txtIxNd, String txtIxNdHash, Date createTime, Date updateTime) {
        this.id = id;
        this.userNo = userNo;
        this.txtIxSt = txtIxSt;
        this.txtIxStHash = txtIxStHash;
        this.txtIxNd = txtIxNd;
        this.txtIxNdHash = txtIxNdHash;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public GDParameterPdod() {
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

    public String getTxtIxSt() {
        return txtIxSt;
    }

    public void setTxtIxSt(String txtIxSt) {
        this.txtIxSt = txtIxSt == null ? null : txtIxSt.trim();
    }

    public String getTxtIxStHash() {
        return txtIxStHash;
    }

    public void setTxtIxStHash(String txtIxStHash) {
        this.txtIxStHash = txtIxStHash == null ? null : txtIxStHash.trim();
    }

    public String getTxtIxNd() {
        return txtIxNd;
    }

    public void setTxtIxNd(String txtIxNd) {
        this.txtIxNd = txtIxNd == null ? null : txtIxNd.trim();
    }

    public String getTxtIxNdHash() {
        return txtIxNdHash;
    }

    public void setTxtIxNdHash(String txtIxNdHash) {
        this.txtIxNdHash = txtIxNdHash == null ? null : txtIxNdHash.trim();
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