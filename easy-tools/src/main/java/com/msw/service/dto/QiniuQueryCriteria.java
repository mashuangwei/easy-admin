package com.msw.service.dto;

import com.msw.annotation.Query;
import lombok.Data;

/**
 * @author mashuangwei
 * @date 2019-6-4 09:54:37
 */
@Data
public class QiniuQueryCriteria{

    @Query(type = Query.Type.INNER_LIKE)
    private String key;
}
