package com.msw.modules.system.service.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * @author mashuangwei
 * @date 2018-11-23
 */
@Data
public class RoleSmallDTO implements Serializable {

    private Long id;

    private String name;

    private Integer level;

    private String dataScope;
}
