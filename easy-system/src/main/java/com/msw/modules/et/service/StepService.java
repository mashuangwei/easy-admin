package com.msw.modules.et.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.msw.modules.et.entity.Step;

import java.util.List;

public interface StepService extends IService<Step> {
    int add(Step step);

    int update(Step step);

    int delete(Long id);

    IPage<Step> query(Page<Step> page, Step step);

    List<Step> getAllStepByCaseId(Long id);

}
