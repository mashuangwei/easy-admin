package com.msw.service.dto;

import com.msw.annotation.Query;
import lombok.Data;

/**
 * sm.ms图床
 *
 * @author mashuangwei
 * @date 2019-6-4 09:52:09
 */
@Data
public class PictureQueryCriteria{

    @Query(type = Query.Type.INNER_LIKE)
    private String filename;
    
    @Query(type = Query.Type.INNER_LIKE)
    private String username;
}
