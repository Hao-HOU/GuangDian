package bit.gd.vo;

/**
 * Created by Hao HOU on 2018/4/10.
 */
public class OneAngle {
    String angle;
    private ComNum[] comNums = new ComNum[10];

    public String getAngle() {
        return angle;
    }

    public void setAngle(String angle) {
        this.angle = angle;
    }

    public ComNum[] getComNums() {
        return comNums;
    }

    public void setComNums(ComNum[] comNums) {
        this.comNums = comNums;
    }
}
