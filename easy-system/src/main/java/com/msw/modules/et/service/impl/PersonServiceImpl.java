package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.entity.Person;
import com.msw.modules.et.mapper.PersonMapper;
import com.msw.modules.et.service.PersonService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

/**
 * @author mashuangwei
 * @date 2019-01-16 20:32
 * @description:
 */
@Service
@Slf4j
public class PersonServiceImpl extends ServiceImpl<PersonMapper, Person> implements PersonService {
}
