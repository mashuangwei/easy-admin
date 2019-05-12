package com.msw.modules.et.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @author mashuangwei
 * @date 2019-01-15 16:34
 * @description:
 */
@TableName("tb_header_form")
@Data
public class HeaderFormParam implements Serializable {
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @TableField("okey")
    private String okey;

    @TableField("ovalue")
    private String ovalue;

    @TableField("description")
    private String description;

    /**
     * 0: header, 1: params, 2: body
     */
    @TableField("type")
    private int type;

    @TableField("api_id")
    private Long api_id;

}
