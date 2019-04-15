package com.msw.modules.et.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author mashuangwei
 * @date 2019-01-15 14:26
 * @description:
 */
@Data
@TableName("tb_app")
public class App implements Serializable {

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String name;

    private String url;

    private String createor;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private Date create_time;

    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date update_time;
}
