package com.msw.modules.et.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.msw.modules.et.entity.HeaderFormParam;

import java.util.List;

/**
 * @author mashuangwei
 * @date 2019-01-23 16:14
 * @description:
 */
public interface HeaderFormParamService extends IService<HeaderFormParam> {
    int add(HeaderFormParam headerFormParam);

    int update(HeaderFormParam headerFormParam);

    int delete(Long id);

    IPage<HeaderFormParam> query(Page<HeaderFormParam> page, HeaderFormParam headerFormParam);

    List<HeaderFormParam> query(Long api_id);

}
