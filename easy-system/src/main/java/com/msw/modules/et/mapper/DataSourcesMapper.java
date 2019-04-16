package com.msw.modules.et.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.msw.modules.et.entity.DataSources;

/**
 * @author mashuangwei
 * @date 2019-01-23 10:45
 * @description:
 */
@DS("master_db")
public interface DataSourcesMapper extends BaseMapper<DataSources> {
}
