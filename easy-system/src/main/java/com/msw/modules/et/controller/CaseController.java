package com.msw.modules.et.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.msw.modules.et.entity.Case;
import com.msw.modules.et.service.CaseService;
import com.msw.utils.PageUtil;
import com.msw.utils.SecurityContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * @author mashuangwei
 * @date 2019-01-15 15:25
 * @description:
 */
@RestController
@RequestMapping("/case")
public class CaseController {

    @Autowired
    private CaseService caseService;

    @PostMapping("/add")
    public ResponseEntity add(@RequestBody Case app) {
        app.setCreateor(SecurityContextHolder.getUserDetails().getUsername());
        if(caseService.add(app) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity update(@RequestBody Case app) {
        app.setCreateor(SecurityContextHolder.getUserDetails().getUsername());
        if(caseService.update(app) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity deleteById(@PathVariable("id") Long id) {
        if(caseService.delete(id) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @GetMapping("/query/by/casename")
    public ResponseEntity query(Case app, Page page){
        return new ResponseEntity(PageUtil.toPage(caseService.query(page, app)), HttpStatus.OK);
    }

    @GetMapping("/query/{project_id}")
    public ResponseEntity query(@PathVariable("project_id") Long id, Page page){
        return new ResponseEntity(PageUtil.toPage( caseService.queryByProject(page, id)), HttpStatus.OK);
    }

    @GetMapping("/query/allcase")
    public ResponseEntity queryAllCase(Page page){
        return new ResponseEntity(PageUtil.toPage( caseService.queryAllCase(page)), HttpStatus.OK);
    }

    @GetMapping("/query/get/all")
    public ResponseEntity queryAllCase(){
        return new ResponseEntity(PageUtil.toPage( caseService.getAllCase()), HttpStatus.OK);
    }
}
