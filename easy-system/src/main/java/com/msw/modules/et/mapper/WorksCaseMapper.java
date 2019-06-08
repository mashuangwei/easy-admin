package com.msw.modules.et.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.msw.modules.et.entity.CaseExcel;
import com.msw.modules.et.entity.WorksCase;

import java.util.List;

@DS("master_db")
public interface WorksCaseMapper extends BaseMapper<WorksCase> {
    void batchInsert(List<CaseExcel> caseList);
}
