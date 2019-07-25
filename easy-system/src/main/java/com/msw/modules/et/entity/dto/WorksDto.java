package com.msw.modules.et.entity.dto;

import lombok.Data;

import java.util.Date;

/**
 * @author mashuangwei
 * @title: WorksDto
 * @projectName easy-admin
 * @description: TODO
 * @date 2019-07-24
 */
@Data
public class WorksDto {
    private Long id;
    private int index = 3;
    private String label;
    private String status;
    private Long createor;
    private String taskName;
    private String tester;
    private String note;
    private String priority;
    private String developer;
    private Date startDate;
    private Date finishDate;
    private int percentage;

}
