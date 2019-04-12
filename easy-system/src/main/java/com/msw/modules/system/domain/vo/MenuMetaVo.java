package com.msw.modules.system.domain.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import java.io.Serializable;

/**
 * @author mashuangwei
 * @date 2018-12-20
 */
@Data
@AllArgsConstructor
public class MenuMetaVo implements Serializable {

    private String title;

    private String icon;
}
