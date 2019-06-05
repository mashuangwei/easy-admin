package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.entity.App;
import com.msw.modules.et.entity.TestWorks;
import com.msw.modules.et.mapper.TestWorksMapper;
import com.msw.modules.et.service.TestWorksService;
import com.msw.utils.SecurityUtils;
import freemarker.template.utility.StringUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
@Slf4j
public class TestWorksServiceImpl extends ServiceImpl<TestWorksMapper, TestWorks> implements TestWorksService {
    @Override
    public int add(TestWorks testWorks) {
        return baseMapper.insert(testWorks);
    }

    @Override
    public int update(TestWorks testWorks) {
        return baseMapper.updateById(testWorks);
    }

    @Override
    public int delete(Long id) {
        return baseMapper.deleteById(id);
    }

    @Override
    public IPage<TestWorks> query(Page<TestWorks> page, TestWorks testWorks) {
        QueryWrapper<TestWorks> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("create_time");
        queryWrapper.like("task_name", testWorks.getTaskName() == null ? "" : testWorks.getTaskName());
        if (!SecurityUtils.getUsername().equalsIgnoreCase("admin")){
            queryWrapper.eq("createor", SecurityUtils.getUsername());
        }
        if (null != testWorks.getStatus() && testWorks.getStatus().equalsIgnoreCase("归档")) {
            queryWrapper.eq("status", "归档");
        }
        return baseMapper.selectPage(page, queryWrapper);
    }

    @Override
    public IPage<TestWorks> searchBy(Page<TestWorks> page, TestWorks testWorks) {
        QueryWrapper<TestWorks> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("create_time");
        if (testWorks.getTaskName() != null) {
            queryWrapper.like("task_name", testWorks.getTaskName());
        }
        if (testWorks.getStatus() != null) {
            queryWrapper.like("status", testWorks.getStatus());
        }

        if (testWorks.getCreateor() != null) {
            queryWrapper.like("createor", testWorks.getCreateor());
        }

        if (testWorks.getStartDate() != null && testWorks.getFinishDate() != null) {
            queryWrapper.ge("start_date", testWorks.getStartDate());
            queryWrapper.le("finish_date", testWorks.getFinishDate());
        }

        return baseMapper.selectPage(page, queryWrapper);
    }

    @Override
    public List<TestWorks> queryAll() {
        return baseMapper.selectList(null);
    }
}
