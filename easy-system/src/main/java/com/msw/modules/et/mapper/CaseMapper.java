package com.msw.modules.et.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.msw.modules.et.entity.Case;

import java.util.List;

@DS("master_db")
public interface CaseMapper extends BaseMapper<Case> {
    int deleteByPrimaryKey(Long id);

    int insert(Case record);

    int insertSelective(Case record);

    Case selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Case record);

    int updateByPrimaryKey(Case record);

    List<Case> selectAllResult();
}
