package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.entity.Step;
import com.msw.modules.et.mapper.StepMapper;
import com.msw.modules.et.service.StepService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
@Slf4j
public class StepServiceImpl extends ServiceImpl<StepMapper, Step> implements StepService {
    @Override
    public int add(Step step) {
        return baseMapper.insert(step);
    }

    @Override
    public int update(Step step) {
        return baseMapper.updateById(step);
    }

    @Override
    public int delete(Long id) {
        return baseMapper.deleteByPrimaryKey(id);
    }

    @Override
    public IPage<Step> query(Page<Step> page, Step step) {
        return null;
    }

    @Override
    public List<Step> getAllStepByCaseId(Long id) {
        QueryWrapper<Step> queryWrapper = new QueryWrapper();
        queryWrapper.eq("case_id", id);
        return baseMapper.selectList(queryWrapper);
    }
}
