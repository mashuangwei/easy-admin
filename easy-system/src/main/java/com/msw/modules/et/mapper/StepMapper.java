package com.msw.modules.et.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.msw.modules.et.entity.Step;

@DS("devops_master")
public interface StepMapper extends BaseMapper<Step> {
    int deleteByPrimaryKey(Long id);

    int insert(Step record);

    int insertSelective(Step record);

    Step selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Step record);

    int updateByPrimaryKey(Step record);
}