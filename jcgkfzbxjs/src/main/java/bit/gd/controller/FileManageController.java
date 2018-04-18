package bit.gd.controller;

import bit.gd.common.Const;
import bit.gd.common.ServerResponse;
import bit.gd.service.IFileService;
import bit.gd.util.FileMD5Util;
import bit.gd.util.PdodTXTUtil;
import bit.gd.util.PropertiesUtil;
import bit.gd.vo.FilenameAndHashVo;
import bit.gd.vo.LightIntensity;
import com.google.common.collect.Maps;
import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

/**
 * Created by Hao HOU on 2018/3/7.
 */
@Controller
@RequestMapping("/api")
public class FileManageController {
    private static final Logger LOGGER = LoggerFactory.getLogger(FileManageController.class);

    @Autowired
    IFileService iFileService;

    @RequestMapping("upload.do")
    @ResponseBody
    public ServerResponse upload(@RequestParam(value = "file", required = false) MultipartFile file,
                                 HttpServletRequest request) throws IOException {
        //填充业务
        String path = request.getSession().getServletContext().getRealPath(Const.UPLOAD_FILE_PATH);
        FilenameAndHashVo filenameAndHashVo = iFileService.upload(file, path);

        return ServerResponse.createBySuccess(filenameAndHashVo);
    }

    @RequestMapping("light_intensity_upload.do")
    @ResponseBody
    public ServerResponse lightUpload(@RequestParam(value = "file", required = false) MultipartFile file,
                                      HttpServletRequest request) {
        String path = request.getSession().getServletContext().getRealPath(Const.UPLOAD_FILE_PATH);
        String fileName = file.getOriginalFilename();
        String uploadFileName =  UUID.randomUUID().toString() + "-" + fileName;
        File fileDir = new File(path);
        if (!fileDir.exists()) {
            fileDir.setWritable(true);
            fileDir.mkdirs();
        }

        File targetFile = new File(path, uploadFileName);
        LightIntensity lightIntensity = new LightIntensity();
        try {
            file.transferTo(targetFile);
            lightIntensity = PdodTXTUtil.getNumberFromTXT(path + File.separator + uploadFileName);

            targetFile.delete();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return ServerResponse.createBySuccess(lightIntensity);
    }
}
