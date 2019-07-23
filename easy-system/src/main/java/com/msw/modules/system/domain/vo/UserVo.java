package com.msw.modules.system.domain.vo;

import com.msw.modules.system.domain.Dept;
import com.msw.modules.system.domain.Job;
import com.msw.modules.system.domain.Role;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Set;

/**
 * @author mashuangwei
 * @date 2018-11-22
 */
@Data
public class UserVo implements Serializable {
    private Long id;

    private String username;

    private String china_name;

    private String email;

    private Boolean enabled;

    private Long job_id;

    private Long dept_id;

    private String dept;

}