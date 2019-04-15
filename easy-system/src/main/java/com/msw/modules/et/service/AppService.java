package com.msw.modules.et.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.msw.modules.et.entity.App;

import java.util.List;

/**
 * @author mashuangwei
 * @date 2019-01-22 18:47
 * @description:
 */
public interface AppService extends IService<App> {
    int add(App app);

    int update(App app);

    int delete(Long id);

    IPage<App> query(Page<App> page, App app);

    List<App> queryAll();
}
