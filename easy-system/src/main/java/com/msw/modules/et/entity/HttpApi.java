package com.msw.modules.et.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author mashuangwei
 * @date 2019-01-15 16:12
 * @description:
 */
@TableName("tb_api")
@Data
public class HttpApi implements Serializable {

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField("app_url")
    private String app_url;

    @TableField("param_type")
    private String param_type;

    @TableField("json_body")
    private String json_body;

    @TableField("request_type")
    private String request_type;

    @TableField("createor")
    private String createor;

    @TableField("app_id")
    private Long app_id;

    @TableField(value = "create_time", fill= FieldFill.INSERT)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date create_time;

    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date update_time;

}
