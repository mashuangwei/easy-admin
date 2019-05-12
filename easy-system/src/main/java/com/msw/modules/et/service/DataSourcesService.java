package com.msw.modules.et.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.msw.modules.et.entity.DataSources;

/**
 * @author mashuangwei
 * @date 2019-01-23 10:46
 * @description:
 */
public interface DataSourcesService extends IService<DataSources> {
    int add(DataSources dataSources);

    int update(DataSources dataSources);

    int delete(Long id);

    IPage<DataSources> query(Page<DataSources> page, DataSources dataSources);

    boolean checkConnect(DataSources dataSources);
}
