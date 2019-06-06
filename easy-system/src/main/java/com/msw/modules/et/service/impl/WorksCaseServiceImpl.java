package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.entity.TestWorks;
import com.msw.modules.et.entity.WorksCase;
import com.msw.modules.et.mapper.WorksCaseMapper;
import com.msw.modules.et.service.WorksCaseService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
@Slf4j
public class WorksCaseServiceImpl extends ServiceImpl<WorksCaseMapper, WorksCase> implements WorksCaseService {
    @Override
    public int add(WorksCase worksCase) {
        return baseMapper.insert(worksCase);
    }

    @Override
    public int update(WorksCase worksCase) {
        return baseMapper.updateById(worksCase);
    }

    @Override
    public int delete(Long id) {
        return baseMapper.deleteById(id);
    }

    @Override
    public IPage<WorksCase> query(Page<WorksCase> page, WorksCase worksCase) {
        QueryWrapper<WorksCase> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("create_time");
        queryWrapper.like("name", worksCase.getName() == null ? "" : worksCase.getName());

        if (worksCase.getTest_result() != null) {
            queryWrapper.like("test_result", worksCase.getTest_result());
        }

        if (worksCase.getWork_id() != null) {
            queryWrapper.eq("work_id", worksCase.getWork_id());
        }

        return baseMapper.selectPage(page, queryWrapper);
    }
}
