package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.entity.HttpStep;
import com.msw.modules.et.mapper.HttpStepMapper;
import com.msw.modules.et.service.HttpStepService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
@Slf4j
public class HttpStepServiceImpl extends ServiceImpl<HttpStepMapper, HttpStep> implements HttpStepService {
    @Override
    public int add(HttpStep httpStep) {
        return baseMapper.insert(httpStep);
    }

    @Override
    public int update(HttpStep httpStep) {
        return baseMapper.updateByPrimaryKeySelective(httpStep);
    }

    @Override
    public int delete(Long id) {
        return baseMapper.deleteByPrimaryKey(id);
    }

    @Override
    public IPage<HttpStep> query(Page<HttpStep> page, HttpStep httpStep) {
        return null;
    }

    @Override
    public HttpStep getAllStepByStepId(Long id) {
        QueryWrapper<HttpStep> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("step_id", id);
        return baseMapper.selectOne(queryWrapper);
    }
}
