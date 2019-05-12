package com.msw.modules.et.mapper;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.msw.modules.et.entity.Project;
import org.apache.ibatis.annotations.Param;

/**
 * @author mashuangwei
 * @date 2019-01-22 10:48
 * @description:
 */
@DS("master_db")
public interface ProjectMapper extends BaseMapper<Project> {
    IPage<Project> findByAuthor(Page page, @Param("author") String author);

    IPage<Project> findByProjectName(Page page, @Param("project_name") String project_name);
}
