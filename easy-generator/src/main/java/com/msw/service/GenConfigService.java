package com.msw.service;

import com.msw.domain.GenConfig;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;

/**
 * @author mashuangwei
 * @date 2019-01-14
 */
@CacheConfig(cacheNames = "genConfig")
public interface GenConfigService {

    /**
     * find
     * @return
     */
    @Cacheable(key = "'1'")
    GenConfig find();

    /**
     * update
     * @param genConfig
     */
    @CacheEvict(allEntries = true)
    GenConfig update(GenConfig genConfig);
}
