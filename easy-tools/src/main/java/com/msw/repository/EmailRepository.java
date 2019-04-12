package com.msw.repository;

import com.msw.domain.EmailConfig;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author mashuangwei
 * @date 2018-12-26
 */
public interface EmailRepository extends JpaRepository<EmailConfig,Long> {
}
