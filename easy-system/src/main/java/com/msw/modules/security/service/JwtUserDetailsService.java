package com.msw.modules.security.service;

import com.msw.exception.EntityNotFoundException;
import com.msw.modules.security.security.JwtUser;
import com.msw.modules.system.domain.User;
import com.msw.modules.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author mashuangwei
 * @date 2018-11-22
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class JwtUserDetailsService implements UserDetailsService {

    @Autowired
    private UserService userService;

    @Autowired
    private JwtPermissionService permissionService;

    @Override
    public UserDetails loadUserByUsername(String username){

        User user = userService.findByName(username);
        if (user == null) {
            throw new EntityNotFoundException(User.class, "name", username);
        } else {
            return createJwtUser(user);
        }
    }

    public UserDetails createJwtUser(User user) {
        return new JwtUser(
                user.getId(),
                user.getUsername(),
                user.getPassword(),
                user.getAvatar(),
                user.getEmail(),
                user.getPhone(),
                user.getDept().getName(),
                user.getJob().getName(),
                permissionService.mapToGrantedAuthorities(user),
                user.getEnabled(),
                user.getCreateTime(),
                user.getLastPasswordResetTime()
        );
    }
}
