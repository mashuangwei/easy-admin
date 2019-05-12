package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.entity.HeaderFormParam;
import com.msw.modules.et.entity.HttpApi;
import com.msw.modules.et.entity.dto.HttpApiDto;
import com.msw.modules.et.mapper.HttpApiMapper;
import com.msw.modules.et.service.HeaderFormParamService;
import com.msw.modules.et.service.HttpApiService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * @author mashuangwei
 * @date 2019-01-23 15:34
 * @description:
 */
@Slf4j
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class HttpApiServiceImpl extends ServiceImpl<HttpApiMapper, HttpApi> implements HttpApiService {

    @Autowired
    private HeaderFormParamService headerFormParamService;

    @Override
    public int add(HttpApi httpApi) {
        return baseMapper.insert(httpApi);
    }

    @Override
    public int update(HttpApi httpApi) {
        return baseMapper.updateById(httpApi);
    }

    @Override
    public int delete(Long id) {
        return baseMapper.deleteById(id);
    }

    @Override
    public IPage<HttpApi> query(Page<HttpApi> page, HttpApi httpApi) {
        QueryWrapper<HttpApi> queryWrapper = new QueryWrapper<>();
        String app_url = httpApi.getApp_url();
        queryWrapper.like("app_url", app_url == null ? "" : app_url);
        queryWrapper.orderByDesc("update_time");
        return baseMapper.selectPage(page, queryWrapper);
    }

    @Override
    public HttpApiDto queryHeaderFormParam(Long api_id) {
        HttpApiDto httpApiDto = new HttpApiDto();
        List<HeaderFormParam> headerList = new ArrayList<>();
        List<HeaderFormParam> paramsList = new ArrayList<>();
        List<HeaderFormParam> bodyList = new ArrayList<>();

        List<HeaderFormParam> headerFormParamList = headerFormParamService.query(api_id);
        Iterator<HeaderFormParam> iterator = headerFormParamList.iterator();
        while (iterator.hasNext()){
            HeaderFormParam formParam = iterator.next();
            if (formParam.getType() == 0) {
                headerList.add(formParam);
            } else if (formParam.getType() == 1){
                paramsList.add(formParam);
            } else {
                bodyList.add(formParam);
            }
        }
        httpApiDto.setHeader(headerList);
        httpApiDto.setParams(paramsList);
        httpApiDto.setBody(bodyList);

        return httpApiDto;
    }

}
