package com.msw.modules.et.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 *
 *
 * @author mashuangwei
 * @date 2019-05-13
 */
@Data
@TableName("tb_works")
public class TestWorks implements Serializable {
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField(value = "task_name")
    private String taskName;

    @TableField(value = "start_date")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date startDate;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField(value = "finish_date")
    private Date finishDate;

    private String developer;

    @TableField(value = "case_totals")
    private int caseTotals;

    @TableField(value = "bug_totals")
    private int bugTotals;

    @TableField(value = "bug_high_num")
    private int bugHighNum;

    @TableField(value = "bug_medium_num")
    private int bugMediumNum;

    @TableField(value = "bug_low_num")
    private int bugLowNum;

    @TableField(value = "bug_cristal_num")
    private int bugCristalNum;

    private String status;

    private String note;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private Date create_time;

    private String createor;
}
