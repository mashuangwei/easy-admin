package com.msw.modules.et.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.github.liaochong.myexcel.core.SaxExcelReader;
import com.msw.modules.et.entity.CaseExcel;
import com.msw.modules.et.entity.TestWorks;
import com.msw.modules.et.entity.WorksCase;
import com.msw.modules.et.service.TestWorksService;
import com.msw.modules.et.service.WorksCaseService;
import com.msw.modules.et.util.FileUtil;
import com.msw.utils.PageUtil;
import com.msw.utils.SecurityUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.net.URLDecoder;
import java.util.List;
import java.util.UUID;

@Slf4j
@RestController
@RequestMapping("/api/works/case")
public class WorksCaseController {
    @Autowired
    private WorksCaseService worksCaseService;

    @PostMapping("/add")
    public ResponseEntity add(@RequestBody WorksCase worksCase) {
        if(worksCaseService.add(worksCase) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity update(@RequestBody WorksCase worksCase) {
        if(worksCaseService.update(worksCase) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity deleteById(@PathVariable("id") Long id) {
        if(worksCaseService.delete(id) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @GetMapping("/query")
    public ResponseEntity query(WorksCase worksCase, Page page){
        return new ResponseEntity(PageUtil.toPage(worksCaseService.query(page, worksCase)), HttpStatus.OK);
    }

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
            File excelFile = new File(filepath);
            InputStream inputStream = null;
            try {
                inputStream = new FileInputStream(excelFile);
                List<CaseExcel> result = SaxExcelReader.of(CaseExcel.class)
                        .sheet(0)
                        .rowFilter(row -> row.getRowNum() > 0)
                        .read(inputStream);

                for (int i = 0; i < result.size(); i++) {
                    result.get(i).setWork_id(id);
                }
                worksCaseService.batchInsert(result);
            } catch (FileNotFoundException e) {
                log.error(e.toString());
            } finally {
                try {
                    inputStream.close();
                    if (excelFile.exists() && excelFile.isFile()) {
                        excelFile.delete();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity(HttpStatus.BAD_REQUEST);
    }

}
