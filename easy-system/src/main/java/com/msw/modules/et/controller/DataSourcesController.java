package com.msw.modules.et.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.msw.exception.BadRequestException;
import com.msw.modules.et.entity.DataSources;
import com.msw.modules.et.service.DataSourcesService;
import com.msw.utils.PageUtil;
import com.msw.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * @author mashuangwei
 * @date 2019-01-14 15:39
 * @description:
 */
@RestController
@RequestMapping("/datasource")
public class DataSourcesController {
    @Autowired
    private DataSourcesService dataSourcesService;

    @GetMapping("/find/all")
    public ResponseEntity query(DataSources dataSources, Page page) {
        return new ResponseEntity(PageUtil.toPage(dataSourcesService.query(page, dataSources)), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity addDataSource(HttpServletRequest request, @RequestBody DataSources dataSources) {
        dataSources.setAuthor(SecurityUtils.getUsername());
        if (dataSourcesService.add(dataSources) < 0) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity updateDataSource(@RequestBody DataSources dataSources) {
        dataSources.setAuthor(SecurityUtils.getUsername());
        if (dataSourcesService.update(dataSources) < 0) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity deleteDataSource(@PathVariable("id") Long id) {
        if (dataSourcesService.delete(id) <= 0) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @PostMapping("/connect/check")
    public ResponseEntity checkConnect(@RequestBody DataSources dataSources) {
        if (!dataSourcesService.checkConnect(dataSources)) {
            throw new BadRequestException(HttpStatus.BAD_REQUEST, "连接失败");
        }
        return new ResponseEntity(dataSourcesService.checkConnect(dataSources), HttpStatus.OK);
    }
}
