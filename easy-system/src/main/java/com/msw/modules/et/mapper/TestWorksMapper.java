package com.msw.modules.et.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.msw.modules.et.entity.TestWorks;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@DS("master_db")
public interface TestWorksMapper extends BaseMapper<TestWorks> {

    @Select("select id, task_name taskName, percentage, tester, createor, status, priority, developer, start_date startDate, note, finish_date finishDate  from tb_works where dept_id = #{dept_id} or createor = #{createor}")
    List<TestWorks> queryWorksByDeptid(@Param("dept_id") Long dept_id, @Param("createor") Long createor);
}
