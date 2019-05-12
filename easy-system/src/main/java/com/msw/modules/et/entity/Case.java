package com.msw.modules.et.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@TableName("tb_case")
public class Case implements Serializable {

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField("case_name")
    private String caseName;

    @TableField("project_id")
    private Long projectId;

    @TableField("module_id")
    private Long moduleId;

    @TableField("execute_flag")
    private Boolean executeFlag;

    @TableField("case_type")
    private String caseType;

    private String description;

    @TableField("status")
    private String status;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private Date createTime;

    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date updateTime;

    @TableField("createor")
    private String createor;

    @TableField(exist = false)
    private List<Step> steps;
}
