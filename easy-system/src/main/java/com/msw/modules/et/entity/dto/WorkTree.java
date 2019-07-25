package com.msw.modules.et.entity.dto;

import com.alibaba.fastjson.JSONObject;
import com.msw.modules.et.entity.TestWorks;
import com.msw.modules.system.domain.vo.UserVo;
import lombok.Data;

import java.util.List;

/**
 * @author mashuangwei
 * @title: WorkTree
 * @projectName easy-admin
 * @description: TODO
 * @date 2019-07-24
 */
@Data
public class WorkTree {
    private Long id;
    private String label;
    private int index = 1;
    private List<UsersTree> children;
}
