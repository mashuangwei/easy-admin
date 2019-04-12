package com.msw.modules.quartz.config;

import com.msw.modules.quartz.domain.QuartzJob;
import com.msw.modules.quartz.repository.QuartzJobRepository;
import com.msw.modules.quartz.utils.QuartzManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author mashuangwei
 * @date 2019-01-07
 */
@Component
public class JobRunner implements ApplicationRunner {

    @Autowired
    private QuartzJobRepository quartzJobRepository;

    @Autowired
    private QuartzManage quartzManage;

    /**
     * 项目启动时重新激活启用的定时任务
     * @param applicationArguments
     * @throws Exception
     */
    @Override
    public void run(ApplicationArguments applicationArguments){
        System.out.println("--------------------注入定时任务---------------------");
        List<QuartzJob> quartzJobs = quartzJobRepository.findByIsPauseIsFalse();
        quartzJobs.forEach(quartzJob -> {
            quartzManage.addJob(quartzJob);
        });
        System.out.println("--------------------定时任务注入完成---------------------");
    }
}
