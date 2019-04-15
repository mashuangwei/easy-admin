package com.msw.modules.et.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.msw.modules.et.entity.HttpApi;
import com.msw.modules.et.entity.dto.HttpApiDto;

/**
 * @author mashuangwei
 * @date 2019-01-23 15:32
 * @description:
 */
public interface HttpApiService extends IService<HttpApi> {
    int add(HttpApi httpApi);

    int update(HttpApi httpApi);

    int delete(Long id);

    IPage<HttpApi> query(Page<HttpApi> page, HttpApi httpApi);

    HttpApiDto queryHeaderFormParam(Long api_id) ;
}
