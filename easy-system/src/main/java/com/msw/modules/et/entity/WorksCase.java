package com.msw.modules.et.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
@TableName("tb_work_case")
public class WorksCase {
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    private String name;
    private String pre_condition;
    private String steps;
    private String expect_result;
    private String test_result;
    private String note;
    private String bug_url;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private Date create_time;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    private Date update_time;

    private String priority;

    private Long work_id;

    private String module;

    private int case_order;
}
