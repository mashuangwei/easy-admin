package com.msw.modules.et.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.msw.modules.et.entity.App;
import com.msw.modules.et.entity.TestWorks;
import com.msw.modules.et.entity.dto.WorkTree;

import java.util.List;

public interface TestWorksService extends IService<TestWorks> {
    int add(TestWorks testWorks);

    int update(TestWorks testWorks);

    int delete(Long id);

    IPage<TestWorks> query(Page<TestWorks> page, TestWorks testWorks);

    IPage<TestWorks> searchBy(Page<TestWorks> page, TestWorks testWorks);

    List<TestWorks> queryAll();

    WorkTree queryWorksByDeptid(Long dept_id, Long createor);
}
