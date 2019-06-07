package com.msw.modules.et.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.github.liaochong.myexcel.core.annotation.ExcelColumn;
import lombok.Data;

import java.util.Date;

@Data
public class CaseExcel {

    @ExcelColumn(index = 2)
    private String name;

    @ExcelColumn(index = 3)
    private String pre_condition;

    @ExcelColumn(index = 4)
    private String steps;

    @ExcelColumn(index = 5)
    private String expect_result;

    @ExcelColumn(index = 6)
    private String test_result;

    @ExcelColumn(index = 7)
    private String note;

//    private String priority;

    @ExcelColumn(index = 1)
    private String module;

    @ExcelColumn(index = 0)
    private String case_order;
}
