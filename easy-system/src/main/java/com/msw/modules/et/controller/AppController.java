package com.msw.modules.et.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.msw.modules.et.entity.App;
import com.msw.modules.et.service.AppService;
import com.msw.utils.PageUtil;
import com.msw.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author mashuangwei
 * @date 2019-01-15 15:25
 * @description:
 */
@RestController
@RequestMapping("/app")
public class AppController {

    @Autowired
    private AppService appService;

    @PostMapping("/add")
    public ResponseEntity add(@RequestBody App app) {
        app.setCreateor(SecurityUtils.getUsername());
        if(appService.add(app) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity update(@RequestBody App app) {
        app.setCreateor(SecurityUtils.getUsername());
        if(appService.update(app) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity deleteById(@PathVariable("id") Long id) {
        if(appService.delete(id) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @GetMapping("/query/by/appname")
    public ResponseEntity query(App app, Page page){
        return new ResponseEntity(PageUtil.toPage(appService.query(page, app)), HttpStatus.OK);
    }

    @GetMapping("/query/all")
    public ResponseEntity query(){
        List<App> appList = appService.queryAll();
        return new ResponseEntity(PageUtil.toPage(appList, appList.size()), HttpStatus.OK);
    }
}
