package com.msw.modules.system.service.mapper;

import com.msw.mapper.EntityMapper;
import com.msw.modules.system.domain.Job;
import com.msw.modules.system.service.dto.JobSmallDTO;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
* @author mashuangwei
* @date 2019-03-29
*/
@Mapper(componentModel = "spring",uses = {},unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface JobSmallMapper extends EntityMapper<JobSmallDTO, Job> {

}