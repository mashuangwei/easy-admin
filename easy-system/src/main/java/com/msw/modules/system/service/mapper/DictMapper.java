package com.msw.modules.system.service.mapper;

import com.msw.mapper.EntityMapper;
import com.msw.modules.system.domain.Dict;
import com.msw.modules.system.service.dto.DictDTO;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
* @author mashuangwei
* @date 2019-04-10
*/
@Mapper(componentModel = "spring",uses = {},unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface DictMapper extends EntityMapper<DictDTO, Dict> {

}