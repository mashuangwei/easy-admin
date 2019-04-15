package com.msw.modules.et.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.msw.modules.et.entity.Project;
import com.msw.modules.et.service.impl.ProjectServiceImpl;
import com.msw.utils.PageUtil;
import com.msw.utils.SecurityContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * @author mashuangwei
 * @date 2019-01-07 18:15
 * @description:
 */
@RestController
@RequestMapping("/project")
public class ProjectController {
    @Autowired
    private ProjectServiceImpl projectService;

    @GetMapping("/query/all")
    public ResponseEntity queryAll(Project project, Page page) {
        return new ResponseEntity(PageUtil.toPage(projectService.queryByProject(project.getProject_name(), page)), HttpStatus.OK);
    }

    @GetMapping("/query")
    public ResponseEntity query(Project project, Page page) {
        return new ResponseEntity(PageUtil.toPage(projectService.query(project, page)), HttpStatus.OK);
    }

    @GetMapping("/query/share")
    public ResponseEntity queryByshare(Project project) {
        return new ResponseEntity(PageUtil.toPage(projectService.findByShare(project.getIs_share())), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity add(@RequestBody Project project) {
        project.setCreateor(SecurityContextHolder.getUserDetails().getUsername());
        if (projectService.addProject(project) < 0) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity update(@RequestBody Project project) {
        if (projectService.updateProject(project) < 0) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @GetMapping("/query/author/{author}")
    public ResponseEntity queryByAuthor(@PathVariable("author") String author, Page page) {
        return new ResponseEntity(PageUtil.toPage(projectService.findByAuthor(page, author)), HttpStatus.OK);
    }

    @GetMapping("/query/id/{id}")
    public ResponseEntity queryByAuthor(@PathVariable("id") Long id) {
        return new ResponseEntity(projectService.findByProjectId(id), HttpStatus.OK);
    }

    @GetMapping("/query/project/{projectName}")
    public ResponseEntity queryByProjectName(@PathVariable("projectName") String projectName, Page page) {
        return new ResponseEntity(PageUtil.toPage(projectService.findByProjectName(page, projectName)), HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity deleteById(@PathVariable("id") Long id) {
        if (projectService.deleteProject(id) < 0) {
            return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

}
