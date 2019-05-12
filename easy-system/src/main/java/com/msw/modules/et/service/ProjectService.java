package com.msw.modules.et.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.msw.modules.et.entity.Project;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;

import java.util.List;

/**
 * @author mashuangwei
 * @date 2019-01-07 15:36
 * @description:
 */
@CacheConfig(cacheNames = "projects")
public interface ProjectService extends IService<Project> {

    @CacheEvict(allEntries = true)
    int addProject(Project project);

    @CacheEvict(allEntries = true)
    int updateProject(Project project);

    @CacheEvict(allEntries = true)
    int deleteProject(Long id);

    @Cacheable(key = "'findByAuthor'+#author")
    IPage<Project> findByAuthor(Page page, String author);

    @Cacheable(key = "'findByShare'+#share")
    List<Project> findByShare(boolean share);

    @Cacheable(key = "'findByProjectId'+#p0")
    Project findByProjectId(Long id);

    IPage<Project> queryByProject(String projectName, Page page) ;

    IPage<Project> query(Project project, Page page) ;

    IPage<Project> findByProjectName(Page page, String projectName);


}
