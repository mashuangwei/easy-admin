package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.entity.App;
import com.msw.modules.et.mapper.AppMapper;
import com.msw.modules.et.service.AppService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author mashuangwei
 * @date 2019-01-22 18:49
 * @description:
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
@Slf4j
public class AppServiceImpl extends ServiceImpl<AppMapper, App> implements AppService {

    @Override
    public int add(App app) {
        return baseMapper.insert(app);
    }

    @Override
    public int update(App app) {
        return baseMapper.updateById(app);
    }

    @Override
    public int delete(Long id) {
        return baseMapper.deleteById(id);
    }

    @Override
    public List<App> queryAll() {
        return baseMapper.selectList(null);
    }

    @Override
    public IPage<App> query(Page page, App app) {
        QueryWrapper<App> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("create_time");
        queryWrapper.like("name", app.getName() == null ? "" : app.getName());
        return baseMapper.selectPage(page, queryWrapper);
    }
}
