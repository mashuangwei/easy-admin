package com.msw.modules.et.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.msw.modules.et.entity.HttpStep;

public interface HttpStepService extends IService<HttpStep> {
    int add(HttpStep httpStep);

    int update(HttpStep httpStep);

    int delete(Long id);

    IPage<HttpStep> query(Page<HttpStep> page, HttpStep httpStep);

    HttpStep getAllStepByStepId(Long id);
}
