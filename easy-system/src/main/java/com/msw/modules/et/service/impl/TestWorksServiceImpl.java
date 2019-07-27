package com.msw.modules.et.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.msw.modules.et.entity.App;
import com.msw.modules.et.entity.TestWorks;
import com.msw.modules.et.entity.dto.UsersTree;
import com.msw.modules.et.entity.dto.WorkTree;
import com.msw.modules.et.entity.dto.WorksDto;
import com.msw.modules.et.mapper.TestWorksMapper;
import com.msw.modules.et.service.TestWorksService;
import com.msw.modules.security.security.JwtUser;
import com.msw.modules.system.domain.vo.UserVo;
import com.msw.modules.system.service.UserService;
import com.msw.utils.SecurityUtils;
import freemarker.template.utility.StringUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
@Slf4j
public class TestWorksServiceImpl extends ServiceImpl<TestWorksMapper, TestWorks> implements TestWorksService {

    @Autowired
    private UserService userService;

    @Override
    public int add(TestWorks testWorks) {
        return baseMapper.insert(testWorks);
    }

    @Override
    public int update(TestWorks testWorks) {
        return baseMapper.updateById(testWorks);
    }

    @Override
    public int delete(Long id) {
        return baseMapper.deleteById(id);
    }

    @Override
    public IPage<TestWorks> query(Page<TestWorks> page, TestWorks testWorks) {
        QueryWrapper<TestWorks> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("create_time");
        queryWrapper.like("task_name", testWorks.getTaskName() == null ? "" : testWorks.getTaskName());
        if (!SecurityUtils.getUsername().equalsIgnoreCase("admin")){
            queryWrapper.eq("createor", SecurityUtils.getUsername());
        }
        if (null != testWorks.getStatus() && testWorks.getStatus().equalsIgnoreCase("归档")) {
            queryWrapper.eq("status", "归档");
        }
        return baseMapper.selectPage(page, queryWrapper);
    }

    @Override
    public IPage<TestWorks> searchBy(Page<TestWorks> page, TestWorks testWorks) {
        QueryWrapper<TestWorks> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("create_time");
        if (testWorks.getTaskName() != null) {
            queryWrapper.like("task_name", testWorks.getTaskName());
        }
        if (testWorks.getStatus() != null) {
            queryWrapper.like("status", testWorks.getStatus());
        }

        if (testWorks.getCreateor() != null) {
            queryWrapper.like("createor", testWorks.getCreateor());
        }

        if (testWorks.getStartDate() != null && testWorks.getFinishDate() != null) {
            queryWrapper.ge("start_date", testWorks.getStartDate());
            queryWrapper.le("finish_date", testWorks.getFinishDate());
        }

        return baseMapper.selectPage(page, queryWrapper);
    }

    @Override
    public List<TestWorks> queryAll() {
        return baseMapper.selectList(null);
    }

    @Override
    public WorkTree queryWorksByDeptid(Long dept_id, String createor) {
        WorkTree workTree = new WorkTree();
        workTree.setId(999999999L);
        List<UsersTree> usersTreeList = new ArrayList<>();
        workTree.setLabel(SecurityUtils.getDept());

        final List<TestWorks> testWorksList = baseMapper.queryWorksByDeptid(dept_id, createor);
        List<UserVo> userVoList = userService.findUsersById(SecurityUtils.getUserId());

        for (int i = 0; i < userVoList.size(); i++) {
            UsersTree usersTree = new UsersTree();
            usersTree.setId(userVoList.get(i).getId());
            usersTree.setLabel(userVoList.get(i).getUsername());
            List<WorksDto> worksDtos = new ArrayList<>();
            for (int j = 0; j < testWorksList.size(); j++) {
                TestWorks testWorks = testWorksList.get(j);
                String tester = testWorks.getTester();
                if (tester != null) {
                    String[] split = tester.split(",");
                    for (int k = 0; k < split.length; k++) {
                        if (split[k].equalsIgnoreCase(userVoList.get(i).getUsername())) {
                            WorksDto worksDto = new WorksDto();
                            worksDto.setId(testWorks.getId());
                            worksDto.setLabel(testWorks.getTaskName());
                            worksDto.setCreateor(testWorks.getCreateor());
                            worksDto.setDeveloper(testWorks.getDeveloper());
                            worksDto.setNote(testWorks.getNote());
                            worksDto.setPriority(testWorks.getPriority());
                            worksDto.setStatus(testWorks.getStatus());
                            worksDto.setTester(testWorks.getTester());
                            worksDto.setTaskName(testWorks.getTaskName());
                            worksDto.setStartDate(testWorks.getStartDate());
                            worksDto.setFinishDate(testWorks.getStartDate());
                            worksDto.setPercentage(testWorks.getPercentage());
                            worksDtos.add(worksDto);
                            break;
                        }
                    }

                }

            }
            usersTreeList.add(usersTree);
            usersTree.setChildren(worksDtos);
        }
        workTree.setChildren(usersTreeList);
        return workTree;
    }
}
