package com.msw.modules.et.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.msw.modules.et.entity.TestWorks;
import com.msw.modules.et.service.TestWorksService;
import com.msw.utils.PageUtil;
import com.msw.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/works")
public class TestWorksController {
    @Autowired
    private TestWorksService testWorksService;

    @PostMapping("/add")
    public ResponseEntity add(@RequestBody TestWorks testWorks) {
        testWorks.setCreateor(SecurityUtils.getUsername());
        if(testWorksService.add(testWorks) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity update(@RequestBody TestWorks testWorks) {
        testWorks.setCreateor(SecurityUtils.getUsername());
        if(testWorksService.update(testWorks) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity deleteById(@PathVariable("id") Long id) {
        if(testWorksService.delete(id) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @GetMapping("/query/by/taskname")
    public ResponseEntity query(TestWorks testWorks, Page page){
        return new ResponseEntity(PageUtil.toPage(testWorksService.query(page, testWorks)), HttpStatus.OK);
    }

    @GetMapping("/query")
    public ResponseEntity searchBy(TestWorks testWorks, Page page){
        return new ResponseEntity(PageUtil.toPage(testWorksService.searchBy(page, testWorks)), HttpStatus.OK);
    }

    @GetMapping("/query/all")
    public ResponseEntity query(){
        List<TestWorks> appList = testWorksService.queryAll();
        return new ResponseEntity(PageUtil.toPage(appList, appList.size()), HttpStatus.OK);
    }

}
