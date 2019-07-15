package com.msw.modules.system.service.mapper;


import com.msw.mapper.EntityMapper;
import com.msw.modules.system.domain.Dept;
import com.msw.modules.system.service.dto.DeptSmallDTO;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
* @author mashuangwei
* @date 2019-03-25
*/
@Mapper(componentModel = "spring",uses = {},unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface DeptSmallMapper extends EntityMapper<DeptSmallDTO, Dept> {

}