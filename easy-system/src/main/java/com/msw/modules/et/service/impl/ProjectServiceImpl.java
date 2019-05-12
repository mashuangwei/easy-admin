package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.entity.Project;
import com.msw.modules.et.mapper.ProjectMapper;
import com.msw.modules.et.service.ProjectService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author mashuangwei
 * @date 2019-01-07 15:48
 * @description:
 */
@Slf4j
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class ProjectServiceImpl extends ServiceImpl<ProjectMapper, Project> implements ProjectService {
    @Autowired
    private ProjectMapper projectMapper;

    @Override
    public int addProject(Project project) {
        return projectMapper.insert(project);
    }

    @Override
    public int updateProject(Project project) {
        return projectMapper.updateById(project);
    }

    @Override
    public int deleteProject(Long id) {
        return projectMapper.deleteById(id);
    }

    @Override
    public IPage<Project> findByAuthor(Page page, String author) {
        return projectMapper.findByAuthor(page, author);
    }
    @Override
    public List<Project> findByShare(boolean share){
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("is_share", share);
        return baseMapper.selectList(queryWrapper);
    }

    @Override
    public Project findByProjectId(Long id) {
        QueryWrapper queryWrapper = new QueryWrapper();
        Map<String, Long> params = new HashMap<>();
        params.put("id", id);
        queryWrapper.allEq(params);
        return projectMapper.selectOne(queryWrapper);
    }

    @Override
    public IPage<Project> findByProjectName(Page page, String projectName) {
        return projectMapper.findByProjectName(page, projectName);
    }

    @Override
    public IPage<Project> queryByProject(String projectName, Page page) {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.like("project_name", null == projectName? "": projectName);
        queryWrapper.orderByDesc("update_time");
        return projectMapper.selectPage(page, queryWrapper);
    }

    @Override
    public IPage<Project> query(Project project, Page page) {
        QueryWrapper queryWrapper = new QueryWrapper();
        if(project.getProject_name() != null){
            queryWrapper.like("project_name", project.getProject_name());
        }
        if(project.getIs_share() != null){
            queryWrapper.eq("is_share", project.getIs_share());
        }
        if(project.getDescription() != null){
            queryWrapper.like("description", project.getDescription());
        }
        queryWrapper.orderByDesc("update_time");
        return projectMapper.selectPage(page, queryWrapper);
    }

}
