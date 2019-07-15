package com.msw.modules.system.service.dto;

import com.msw.annotation.Query;
import lombok.Data;

/**
 * 公共查询类
 */
@Data
public class CommonQueryCriteria {

    @Query(type = Query.Type.INNER_LIKE)
    private String name;
}
