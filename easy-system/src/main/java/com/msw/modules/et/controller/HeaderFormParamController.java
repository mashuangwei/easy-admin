package com.msw.modules.et.controller;

import com.msw.modules.et.entity.HeaderFormParam;
import com.msw.modules.et.service.HeaderFormParamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * @author mashuangwei
 * @date 2019-02-15 10:19
 * @description:
 */
@RestController
@RequestMapping("/api/hfb/param")
public class HeaderFormParamController {

    @Autowired
    private HeaderFormParamService headerFormParamService;

    @PostMapping("/add")
    public ResponseEntity add(@RequestBody HeaderFormParam headerFormParam){
        int ret = headerFormParamService.add(headerFormParam);
        if (ret > 0) {
            return new ResponseEntity(headerFormParam.getId(), HttpStatus.CREATED);
        }
        return new ResponseEntity(HttpStatus.BAD_REQUEST);
    }

    @PutMapping("/update")
    public ResponseEntity update(@RequestBody HeaderFormParam headerFormParam){
        if (headerFormParamService.update(headerFormParam) > 0) {
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity(HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity update(@PathVariable("id") Long id){
        if (headerFormParamService.delete(id) > 0) {
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity(HttpStatus.BAD_REQUEST);
    }

}
