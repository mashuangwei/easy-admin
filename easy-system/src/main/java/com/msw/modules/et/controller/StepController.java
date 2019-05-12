package com.msw.modules.et.controller;


import com.msw.modules.et.entity.Step;
import com.msw.modules.et.service.StepService;
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
@RequestMapping("/step")
public class StepController {

    @Autowired
    private StepService stepService;

    @PostMapping("/add")
    public ResponseEntity add(@RequestBody Step step) {
        if(stepService.add(step) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity update(@RequestBody Step step) {
        if(stepService.update(step) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity deleteById(@PathVariable("id") Long id) {
        if(stepService.delete(id) < 0){
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @GetMapping("/query/{case_id}")
    public ResponseEntity query(@PathVariable("case_id") Long id){
        return new ResponseEntity(PageUtil.toPage( stepService.getAllStepByCaseId(id)), HttpStatus.OK);
    }

}
