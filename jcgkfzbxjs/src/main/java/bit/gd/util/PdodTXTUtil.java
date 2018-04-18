package bit.gd.util;

import bit.gd.common.Const;
import bit.gd.vo.ComNum;
import bit.gd.vo.FilenameAndHashVo;
import bit.gd.vo.LightIntensity;
import bit.gd.vo.OneAngle;
import com.alibaba.fastjson.JSON;
import com.google.common.collect.Lists;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.util.UUID;

/**
 * Created by Hao HOU on 2018/4/10.
 */
public class PdodTXTUtil {
    public static final Logger LOGGER = LoggerFactory.getLogger(PdodTXTUtil.class);
    public static LightIntensity getNumberFromTXT(String path) {
        File file = new File(path);
        String[] numbers = new String[160];
        InputStreamReader reader = null;
        BufferedReader br = null;
        try {
            reader = new InputStreamReader(new FileInputStream(file));
            br = new BufferedReader(reader);

            String line = "";
            line = br.readLine();
            int i = 0;
            while (line != null) {
                numbers[i++] = line;
                line = br.readLine();
            }

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

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
        return lightIntensity;
    }


    public static FilenameAndHashVo writeNumbersToTXT(String fileName, LightIntensity lightIntensity) {
        FilenameAndHashVo filenameAndHashVo = new FilenameAndHashVo();
        String uploadPath = System.getProperty("bit.gd") + File.separator + Const.UPLOAD_FILE_PATH;

        String[] numbers = new String[160];
        int realIndex = 0;
        int imgIndex = 80;
        for (int i = 0; i < lightIntensity.getOneAngles().length; i++) {
            OneAngle oneAngle = lightIntensity.getOneAngles()[i];
            for (int j = 0; j < oneAngle.getComNums().length; j++) {
                ComNum comNum = oneAngle.getComNums()[j];
                numbers[realIndex++] = comNum.getReal();
                numbers[imgIndex++] = comNum.getImaginary();
            }
        }

        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < numbers.length; i++) {
            sb.append(numbers[i]).append("\n");
        }

        if (!fileName.endsWith(".txt")) {
            fileName = fileName + ".txt";
        }
        String uuidFileName = UUID.randomUUID().toString() + "-" + fileName;
        File outFile = new File(uploadPath + File.separator + uuidFileName);
        BufferedWriter bufferedWriter = null;
        try {
            outFile.createNewFile();
            bufferedWriter = new BufferedWriter(new FileWriter(outFile));
            bufferedWriter.write(sb.toString());
            bufferedWriter.flush();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (bufferedWriter != null) {
                try {
                    bufferedWriter.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        File targetFile = new File(uploadPath + File.separator + uuidFileName);
        try {
            //将targetFile上传到我们的FTP服务器上
            FTPUtil.uploadFile(Lists.newArrayList(targetFile), Const.UPLOAD_FILE_PATH);
            //已经上传到FTP服务器上

            //上传完之后，删除upload下面的文件
            targetFile.delete();

        } catch (IOException e) {
            LOGGER.error("上传文件异常", e);
            return null;
        }

        //计算上传文件Hash值
        try {
            File hashFile = new File(PropertiesUtil.getProperty("ftp.server.path")
                    + Const.UPLOAD_FILE_PATH + File.separator + uuidFileName);
            InputStream inputStream = new FileInputStream(hashFile);
            filenameAndHashVo.setFileHash(FileMD5Util.getMD5Checksum(inputStream));
            LOGGER.info("计算出的文件Hash值为：" + filenameAndHashVo.getFileHash());
        } catch (Exception e) {
            e.printStackTrace();
        }

        filenameAndHashVo.setTargetFileName(uuidFileName);

        return filenameAndHashVo;
    }
}
