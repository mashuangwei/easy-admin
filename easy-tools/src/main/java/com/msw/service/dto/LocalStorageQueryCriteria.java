package com.msw.service.dto;

import com.msw.annotation.Query;
import lombok.Data;

/**
* @author mashuangwei
* @date 2019-09-05
*/
@Data
public class LocalStorageQueryCriteria{

    // 模糊
    @Query(blurry = "name,suffix,type,operate,size")
    private String blurry;
}