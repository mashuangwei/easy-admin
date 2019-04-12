package com.msw.service;

import com.msw.domain.vo.EmailVo;
import com.msw.domain.VerificationCode;

/**
 * @author mashuangwei
 * @date 2018-12-26
 */
public interface VerificationCodeService {

    /**
     * 发送邮件验证码
     * @param code
     */
    EmailVo sendEmail(VerificationCode code);

    /**
     * 验证
     * @param code
     */
    void validated(VerificationCode code);
}
