package com.msw.modules.et.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.msw.modules.et.entity.HttpApi;

/**
 * @author mashuangwei
 * @date 2019-01-23 15:31
 * @description:
 */
@DS("devops_master")
public interface HttpApiMapper extends BaseMapper<HttpApi> {
}
