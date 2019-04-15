package com.msw.modules.et.entity.dto;

import com.msw.modules.et.entity.HeaderFormParam;
import lombok.Data;

import java.util.List;

/**
 * @author mashuangwei
 * @date 2019-01-23 16:28
 * @description:
 */
@Data
public class HttpApiDto {
    /**
     * body参数请求类型， none、form-data、json、 x-www-form-urlencoded
     */
    private String body_type;

    private List<HeaderFormParam> header;

    private List<HeaderFormParam> params;

    private List<HeaderFormParam> body;

}
