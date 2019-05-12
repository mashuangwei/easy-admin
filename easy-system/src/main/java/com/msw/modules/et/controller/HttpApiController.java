package com.msw.modules.et.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.msw.modules.et.entity.HttpApi;
import com.msw.modules.et.entity.dto.HttpApiDto;
import com.msw.modules.et.service.HttpApiService;
import com.msw.utils.PageUtil;
import com.msw.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

/**
 * @author mashuangwei
 * @date 2019-01-15 20:38
 * @description:
 */
@RestController
@RequestMapping("/httpapi")
public class HttpApiController {
    @Autowired
    private HttpApiService httpApiService;

    @PostMapping("/add")
    public ResponseEntity add(@RequestBody HttpApi httpApi) {
        httpApi.setCreateor(SecurityUtils.getUsername());
        if (httpApiService.add(httpApi) < 0) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity update(@RequestBody HttpApi httpApi) {
        httpApi.setCreateor(SecurityUtils.getUsername());
        if (httpApiService.update(httpApi) < 0) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity delete(@PathVariable("id") Long id) {
        if (httpApiService.delete(id) < 0) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @GetMapping("/query/all")
    public ResponseEntity queryAll(HttpApi httpApi, Page page) {
        return new ResponseEntity(PageUtil.toPage(httpApiService.query(page, httpApi)), HttpStatus.OK);
    }

    @GetMapping("/query/headerform/{api_id}")
    public ResponseEntity queryByAppId(@PathVariable("api_id") Long id) {
        HttpApiDto httpApiDto = httpApiService.queryHeaderFormParam(id);
        return new ResponseEntity(httpApiDto, HttpStatus.OK);
    }


}
