package com.msw.modules.et.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.msw.modules.et.entity.HttpStep;

@DS("master_db")
public interface HttpStepMapper extends BaseMapper<HttpStep> {
    int deleteByPrimaryKey(Long id);

    int insert(HttpStep record);

    int insertSelective(HttpStep record);

    HttpStep selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HttpStep record);

    int updateByPrimaryKeyWithBLOBs(HttpStep record);

    int updateByPrimaryKey(HttpStep record);
}