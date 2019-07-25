package com.msw.modules.et.entity.dto;

import lombok.Data;

import java.util.List;

/**
 * @author mashuangwei
 * @title: UsersTree
 * @projectName easy-admin
 * @description: TODO
 * @date 2019-07-24
 */
@Data
public class UsersTree {
    private Long id;
    private String label;
    private int index = 2;
    private List<WorksDto> children;
}
