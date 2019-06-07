package com.msw.modules.et.controller;

import com.msw.modules.et.util.FileUtil;
import com.msw.utils.PageUtil;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileNotFoundException;
import java.net.URLDecoder;
import java.util.UUID;

@RestController
@RequestMapping("/api/file")
public class FileController {

    @PostMapping("/upload")
    public ResponseEntity upload(@RequestParam("file") MultipartFile file){
        if (file.isEmpty()) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }

        String path = null;
        try {
            path = URLDecoder.decode(ResourceUtils.getURL("classpath:").getPath()) + "/files/" + UUID.randomUUID().toString() + ".xlsx";
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        if (FileUtil.saveFile(file, path)){
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity(HttpStatus.BAD_REQUEST);
    }
}
