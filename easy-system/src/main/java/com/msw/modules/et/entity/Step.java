package com.msw.modules.et.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("tb_step")
public class Step implements Serializable {
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    private String stepName;

    private String stepType;

    private Integer retry;

    private String description;

    private String executeResult;

    private Integer sleepTime;

    private Integer stepIndex;

    private Boolean executeFlag;

    private Long caseId;

}