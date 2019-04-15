package com.msw.modules.et.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.msw.modules.et.entity.Person;
import com.msw.modules.et.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author mashuangwei
 * @date 2019-01-16 20:36
 * @description:
 */
@RestController
@RequestMapping("/person")
public class PersonController {
    @Autowired
    private PersonService personService;

//    @Autowired
//    private PersonMapper personMapper;

    @GetMapping("/query")
    public ResponseEntity query(){
        Page<Person> personPage = new Page<>();
        QueryWrapper<Person> queryWrapper = new QueryWrapper<>();
        return new ResponseEntity(personService.page(personPage, queryWrapper), HttpStatus.OK);
    }
}
