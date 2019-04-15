package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.entity.Case;
import com.msw.modules.et.mapper.CaseMapper;
import com.msw.modules.et.service.CaseService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author mashuangwei
 * @date 2019-02-19 17:00
 * @description:
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
@Slf4j
public class CaseServiceImpl extends ServiceImpl<CaseMapper, Case> implements CaseService {
    @Override
    public int add(Case c) {
        c.setStatus("忽略");
        return baseMapper.insert(c);
    }

    @Override
    public int update(Case basecase) {
        return baseMapper.updateById(basecase);
    }

    @Override
    public int delete(Long id) {
        return baseMapper.deleteByPrimaryKey(id);
    }

    @Override
    public IPage<Case> query(Page<Case> page, Case basecase) {
        QueryWrapper<Case> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("create_time");
        if (basecase.getCaseName() != null){
            queryWrapper.like("case_name", basecase.getCaseName());
        }
        return baseMapper.selectPage(page, queryWrapper);
    }

    @Override
    public IPage<Case> queryByProject(Page<Case> page, Long id) {
        QueryWrapper<Case> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("project_id", id);
        return baseMapper.selectPage(page, queryWrapper);
    }

    @Override
    public IPage<Case> queryAllCase(Page<Case> page) {
        return baseMapper.selectPage(page, null);
    }

    @Override
    public List<Case> getAllCase() {
        return baseMapper.selectAllResult();
    }
}
