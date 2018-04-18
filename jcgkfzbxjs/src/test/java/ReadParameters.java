import bit.gd.vo.ComNum;
import bit.gd.vo.LightIntensity;
import bit.gd.vo.OneAngle;
import bit.gd.vo.PdodRequestVo;
import com.alibaba.fastjson.JSON;

import java.io.*;

/**
 * Created by Hao HOU on 2018/4/10.
 */
public class ReadParameters {
    public static void main(String[] args) {
        String path = "E:\\ztest\\80faa813-843d-4f27-b651-ef71f6f9eca2-test.txt";
        File file = new File(path);
        String[] numbers = new String[160];
        try {
            InputStreamReader reader = new InputStreamReader(new FileInputStream(file));
            BufferedReader br = new BufferedReader(reader);

            String line = "";
            line = br.readLine();
            int i = 0;
            while (line != null) {
                numbers[i++] = line;
                line = br.readLine();
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        PdodRequestVo pdodRequestVo = new PdodRequestVo();
        LightIntensity lightIntensity = new LightIntensity();
        OneAngle[] oneAngles = new OneAngle[8];
        double degree = 0;
        for (int i = 0; i < 8; i++) {
            OneAngle oneAngle = new OneAngle();
            oneAngle.setAngle(String.valueOf(degree));
            degree += 22.5;
            ComNum[] comNums = new ComNum[10];
            for (int j = i * 10; j < i * 10 + 10; j++) {
                ComNum comNum = new ComNum();
                comNum.setReal(numbers[j]);
                comNum.setImaginary(numbers[j + 80]);
                comNums[j - (i * 10)] = comNum;
            }
            oneAngle.setComNums(comNums);
            oneAngles[i] = oneAngle;
        }

        lightIntensity.setOneAngles(oneAngles);
        pdodRequestVo.setxLightIntensity(lightIntensity);
        pdodRequestVo.setyLightIntensity(lightIntensity);
        System.out.println(JSON.toJSONString(pdodRequestVo));
    }
}
