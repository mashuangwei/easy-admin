package com.msw.modules.et.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.msw.modules.et.entity.CaseExcel;
import com.msw.modules.et.entity.TestWorks;
import com.msw.modules.et.entity.WorksCase;

import java.util.List;

public interface WorksCaseService extends IService<WorksCase> {
    int add(WorksCase worksCase);

    int update(WorksCase worksCase);

    int delete(Long id);

    IPage<WorksCase> query(Page<WorksCase> page, WorksCase worksCase);

    void batchInsert(List<CaseExcel> caseList);
}
