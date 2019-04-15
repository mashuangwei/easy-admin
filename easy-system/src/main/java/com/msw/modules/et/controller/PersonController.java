package com.msw.modules.et.controller;

import com.msw.modules.et.domain.Person;
import com.msw.modules.et.service.PersonService;
import com.msw.modules.et.service.impl.PersonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/person")
public class PersonController {
    @Autowired
    private PersonServiceImpl personService;
    
    @GetMapping("/query/{id}")
    public Person query(@PathVariable Long id){
        return personService.queryById(id);
    }
}
