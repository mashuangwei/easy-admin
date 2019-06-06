package com.msw.modules.et.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.msw.modules.et.entity.TestWorks;
import com.msw.modules.et.entity.WorksCase;
import com.msw.modules.et.service.TestWorksService;
import com.msw.modules.et.service.WorksCaseService;
import com.msw.utils.PageUtil;
import com.msw.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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

}
