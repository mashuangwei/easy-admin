package com.msw.modules.et.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.msw.modules.et.entity.HeaderFormParam;

/**
 * @author mashuangwei
 * @date 2019-01-23 16:13
 * @description:
 */
@DS("master_db")
public interface HeaderFormParamMapper extends BaseMapper<HeaderFormParam> {
    int insertData(HeaderFormParam record);
}
