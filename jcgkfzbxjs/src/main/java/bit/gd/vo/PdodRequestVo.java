package bit.gd.vo;

/**
 * Created by Hao HOU on 2018/4/10.
 */
public class PdodRequestVo {
    private String xFileName;
    private LightIntensity xLightIntensity;
    private String yFileName;
    private LightIntensity yLightIntensity;

    public String getxFileName() {
        return xFileName;
    }

    public void setxFileName(String xFileName) {
        this.xFileName = xFileName;
    }

    public LightIntensity getxLightIntensity() {
        return xLightIntensity;
    }

    public void setxLightIntensity(LightIntensity xLightIntensity) {
        this.xLightIntensity = xLightIntensity;
    }

    public String getyFileName() {
        return yFileName;
    }

    public void setyFileName(String yFileName) {
        this.yFileName = yFileName;
    }

    public LightIntensity getyLightIntensity() {
        return yLightIntensity;
    }

    public void setyLightIntensity(LightIntensity yLightIntensity) {
        this.yLightIntensity = yLightIntensity;
    }
}
