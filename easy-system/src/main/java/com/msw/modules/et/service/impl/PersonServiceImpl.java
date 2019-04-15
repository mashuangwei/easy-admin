package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.domain.Person;
import com.msw.modules.et.mapper.PersonMapper;
import com.msw.modules.et.service.PersonService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class PersonServiceImpl extends ServiceImpl<PersonMapper, Person> implements PersonService {

    public Person queryById(Long id){
        return baseMapper.selectByPrimaryKey(id);
    }
}
