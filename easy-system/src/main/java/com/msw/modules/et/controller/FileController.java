package com.msw.modules.et.controller;

import com.github.liaochong.myexcel.core.SaxExcelReader;
import com.msw.modules.et.entity.CaseExcel;
import com.msw.modules.et.service.WorksCaseService;
import com.msw.modules.et.util.FileUtil;
import com.msw.utils.PageUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/file")
@Slf4j
public class FileController {
    @Autowired
    private WorksCaseService worksCaseService;

    @PostMapping("/upload")
    public ResponseEntity upload(@RequestParam("file") MultipartFile file, @RequestParam("id") Long id) {
        if (file.isEmpty()) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }

        String filepath = null;
        try {
            filepath = URLDecoder.decode(ResourceUtils.getURL("classpath:").getPath()) + "/files/" + UUID.randomUUID().toString() + ".xlsx";
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        if (FileUtil.saveFile(file, filepath)) {
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity(HttpStatus.BAD_REQUEST);
    }
}
