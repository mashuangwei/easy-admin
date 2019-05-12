package com.msw.modules.et.entity;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author mashuangwei
 * @date 2019-01-14 13:37
 * @description:
 */
@Data
@TableName("tb_datasource")
public class DataSources implements Serializable {

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField(value = "datasource_name")
    private String datasource_name;

    @TableField(value = "username")
    private String username;

    @TableField(value = "password")
    private String password;

    @TableField(value = "url")
    private String url;

    private String type;

    @TableField(value = "oracle_type")
    private String oracleType;

    @TableField(value = "database_name")
    private String database_name;

    @TableField(value = "port")
    private int port;

    @TableField(value = "createor")
    private String author;

    @TableField(value = "create_time", fill = FieldFill.INSERT)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date create_time;

    @TableField(value = "update_time", fill = FieldFill.INSERT_UPDATE)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date update_time;
}
