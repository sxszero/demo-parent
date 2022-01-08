package com.zhwl.demo.service.impl;

import com.zhwl.demo.common.base.BaseService;
import com.zhwl.demo.mapper.UserMapper;
import com.zhwl.demo.po.User;
import com.zhwl.demo.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yxs
 * @desc 用户业务逻辑层实现
 * @date 2021-09-27 15:56
 */
@Service
@Slf4j
public class UserServiceImpl extends BaseService implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> pageGetUserList(String username) {
        List<User> userList = userMapper.pageGetUserList(username);
        return userList;
    }
}
