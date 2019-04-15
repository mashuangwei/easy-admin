package com.msw.modules.et.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author mashuangwei
 * @date 2019-01-07 15:15
 * @description:
 */
@Data
@TableName("tb_project")
public class Project implements Serializable {

    @TableId(value = "id" ,type = IdType.AUTO)
    private Long id;

    @TableField("project_name")
    private String project_name;

    @TableField("description")
    private String description;

    @TableField("is_share")
    private Boolean is_share;

    @TableField("createor")
    private String createor;

    @TableField(value = "create_time", fill = FieldFill.INSERT)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date create_time;

    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date update_time;
}
