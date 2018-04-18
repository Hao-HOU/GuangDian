package bit.gd.vo;

import bit.gd.pojo.GDParameterPdod;
import bit.gd.pojo.GDResultPdod;

/**
 * Created by Hao HOU on 2018/4/10.
 */
public class PdodSimulationRecordDetailVo {
    GDParameterPdod gdParameterPdod;
    GDResultPdod gdResultPdod;
    LightIntensity xLightIntensity;
    LightIntensity yLightIntensity;
    String ip;

    public GDParameterPdod getGdParameterPdod() {
        return gdParameterPdod;
    }

    public void setGdParameterPdod(GDParameterPdod gdParameterPdod) {
        this.gdParameterPdod = gdParameterPdod;
    }

    public GDResultPdod getGdResultPdod() {
        return gdResultPdod;
    }

    public void setGdResultPdod(GDResultPdod gdResultPdod) {
        this.gdResultPdod = gdResultPdod;
    }

    public LightIntensity getxLightIntensity() {
        return xLightIntensity;
    }

    public void setxLightIntensity(LightIntensity xLightIntensity) {
        this.xLightIntensity = xLightIntensity;
    }

    public LightIntensity getyLightIntensity() {
        return yLightIntensity;
    }

    public void setyLightIntensity(LightIntensity yLightIntensity) {
        this.yLightIntensity = yLightIntensity;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }
}
