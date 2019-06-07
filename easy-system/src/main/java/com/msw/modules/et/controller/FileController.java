package com.msw.modules.et.controller;

import com.github.liaochong.myexcel.core.SaxExcelReader;
import com.msw.modules.et.entity.CaseExcel;
import com.msw.modules.et.util.FileUtil;
import com.msw.utils.PageUtil;
import lombok.extern.slf4j.Slf4j;
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

    @PostMapping("/upload")
    public ResponseEntity upload(@RequestParam("file") MultipartFile file){
        if (file.isEmpty()) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }

        String filepath = null;
        try {
            filepath = URLDecoder.decode(ResourceUtils.getURL("classpath:").getPath()) + "/files/" + UUID.randomUUID().toString() + ".xlsx";
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        if (FileUtil.saveFile(file, filepath)){
            File excelFile = new File(filepath);
            InputStream inputStream = null;
            try {
                inputStream = new FileInputStream(excelFile);
                List<CaseExcel> result = SaxExcelReader.of(CaseExcel.class)
                        .sheet(0) // 0代表第一个，如果为0，可省略该操作
                        .rowFilter(row -> row.getRowNum() > 0) // 如无需过滤，可省略该操作，0代表第一行
                        .read(inputStream);
                System.err.println(result.toString());

            } catch (FileNotFoundException e){
                log.error(e.toString());
            } finally {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity(HttpStatus.BAD_REQUEST);
    }
}
