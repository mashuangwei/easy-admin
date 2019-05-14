package com.msw.modules.et.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.msw.modules.et.entity.TestWorks;

@DS("master_db")
public interface TestWorksMapper extends BaseMapper<TestWorks> {
}
