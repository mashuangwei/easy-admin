package com.msw.repository;

import com.msw.domain.AlipayConfig;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author mashuangwei
 * @date 2018-12-31
 */
public interface AlipayRepository extends JpaRepository<AlipayConfig,Long> {
}
