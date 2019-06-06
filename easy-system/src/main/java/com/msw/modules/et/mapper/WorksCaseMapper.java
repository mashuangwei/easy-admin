package com.msw.modules.et.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.msw.modules.et.entity.WorksCase;

@DS("master_db")
public interface WorksCaseMapper extends BaseMapper<WorksCase> {
}
