package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.entity.HeaderFormParam;
import com.msw.modules.et.mapper.HeaderFormParamMapper;
import com.msw.modules.et.service.HeaderFormParamService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author mashuangwei
 * @date 2019-01-23 16:15
 * @description:
 */
@Slf4j
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class HeaderFormParamServiceImpl extends ServiceImpl<HeaderFormParamMapper, HeaderFormParam> implements HeaderFormParamService {

    @Override
    public int add(HeaderFormParam headerFormParam) {
        return baseMapper.insert(headerFormParam);
    }

    @Override
    public int update(HeaderFormParam headerFormParam) {
        return baseMapper.updateById(headerFormParam);
    }

    @Override
    public int delete(Long id) {
        return baseMapper.deleteById(id);
    }

    @Override
    public IPage<HeaderFormParam> query(Page<HeaderFormParam> page, HeaderFormParam headerFormParam) {
        QueryWrapper<HeaderFormParam> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("api_id", headerFormParam.getApi_id());
        return baseMapper.selectPage(page, queryWrapper);
    }

    @Override
    public List<HeaderFormParam> query(Long api_id) {
        QueryWrapper<HeaderFormParam> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("api_id", api_id);
        return baseMapper.selectList(queryWrapper);
    }
}
