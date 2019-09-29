package com.msw.modules.system.service;

import com.msw.modules.system.domain.vo.UserVo;
import com.msw.modules.system.service.dto.UserDTO;
import com.msw.modules.system.domain.User;
import com.msw.modules.system.service.dto.UserQueryCriteria;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author mashuangwei
 * @date 2018-11-23
 */
@CacheConfig(cacheNames = "user")
public interface UserService {

    /**
     * get
     * @param id
     * @return
     */
    @Cacheable(key = "#p0")
    UserDTO findById(long id);

    /**
     * create
     * @param resources
     * @return
     */
    @CacheEvict(allEntries = true)
    UserDTO create(User resources);

    /**
     * update
     * @param resources
     */
    @CacheEvict(allEntries = true)
    void update(User resources);

    /**
     * delete
     * @param id
     */
    @CacheEvict(allEntries = true)
    void delete(Long id);

    /**
     * findByName
     * @param userName
     * @return
     */
    @Cacheable(key = "'loadUserByUsername:'+#p0")
    UserDTO findByName(String userName);

    /**
     * 修改密码
     * @param username
     * @param encryptPassword
     */
    @CacheEvict(allEntries = true)
    void updatePass(String username, String encryptPassword);

    /**
     * 修改头像
     * @param file
     */
    @CacheEvict(allEntries = true)
    void updateAvatar(MultipartFile file);

    /**
     * 修改邮箱
     * @param username
     * @param email
     */
    @CacheEvict(allEntries = true)
    void updateEmail(String username, String email);

    @Cacheable
    Object queryAll(UserQueryCriteria criteria, Pageable pageable);

    @Cacheable
    List<UserDTO> queryAll(UserQueryCriteria criteria);

    void download(List<UserDTO> queryAll, HttpServletResponse response) throws IOException;

    /**
     * findByUserName
     * @param userName
     * @return
     */
    @Cacheable(key = "'loadUserListByUsername:'+#p0")
    List<UserVo> findByUserName(String userName);

    /**
     * get
     * @param id
     * @return
     */
    @Cacheable(key = "#p0")
    List<UserVo> findUsersById(long id);

    /**
     * 修改中文名字
     * @param username
     * @param name
     */
    @CacheEvict(allEntries = true)
    void updateName(String username, String name);
}