package com.msw.modules.system.service.dto;

import com.msw.annotation.Query;
import lombok.Data;
import java.io.Serializable;
import java.util.Set;

/**
 * @author mashuangwei
 * @date 2018-11-23
 */
@Data
public class UserQueryCriteria implements Serializable {

    @Query
    private Long id;

    @Query(propName = "id", type = Query.Type.IN, joinName = "dept")
    private Set<Long> deptIds;

    // 多字段模糊
    @Query(blurry = "email,username")
    private String blurry;

    @Query
    private Boolean enabled;

    private Long deptId;

    @Query(type = Query.Type.INNER_LIKE)
    private String username;

    @Query(type = Query.Type.INNER_LIKE)
    private String chinaName;

    @Query(type = Query.Type.INNER_LIKE)
    private String email;
}

