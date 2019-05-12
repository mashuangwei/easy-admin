package com.msw.modules.et.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.msw.modules.et.entity.Case;

import java.util.List;

/**
 * @author mashuangwei
 * @date 2019-02-19 16:13
 * @description:
 */
public interface CaseService extends IService<Case> {
    int add(Case basecase);

    int update(Case basecase);

    int delete(Long id);

    IPage<Case> query(Page<Case> page, Case basecase);

    IPage<Case> queryByProject(Page<Case> page, Long id);

    IPage<Case> queryAllCase(Page<Case> page);

    List<Case> getAllCase();

}
