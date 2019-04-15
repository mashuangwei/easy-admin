package com.msw.modules.et.controller;


import com.msw.modules.et.entity.HttpStep;
import com.msw.modules.et.service.HttpStepService;
import com.msw.utils.PageUtil;
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
@RequestMapping("/httpstep")
public class HttpStepController {

    @Autowired
    private HttpStepService httpStepService;

    @PostMapping("/add")
    public ResponseEntity add(@RequestBody HttpStep step) {
        if(httpStepService.add(step) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity update(@RequestBody HttpStep step) {
        if(httpStepService.update(step) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity deleteById(@PathVariable("id") Long id) {
        if(httpStepService.delete(id) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @GetMapping("/query/{step_id}")
    public ResponseEntity query(@PathVariable("step_id") Long id){
        return new ResponseEntity(PageUtil.toPage( httpStepService.getAllStepByStepId(id)), HttpStatus.OK);
    }

}
