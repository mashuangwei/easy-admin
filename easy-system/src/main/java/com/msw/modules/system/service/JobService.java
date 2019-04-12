package com.msw.modules.system.service;

import com.msw.modules.system.domain.Job;
import com.msw.modules.system.service.dto.JobDTO;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;

/**
* @author mashuangwei
* @date 2019-03-29
*/
@CacheConfig(cacheNames = "job")
public interface JobService {

    /**
     * findById
     * @param id
     * @return
     */
    @Cacheable(key = "#p0")
    JobDTO findById(Long id);

    /**
     * create
     * @param resources
     * @return
     */
    @CacheEvict(allEntries = true)
    JobDTO create(Job resources);

    /**
     * update
     * @param resources
     */
    @CacheEvict(allEntries = true)
    void update(Job resources);

    /**
     * delete
     * @param id
     */
    @CacheEvict(allEntries = true)
    void delete(Long id);
}