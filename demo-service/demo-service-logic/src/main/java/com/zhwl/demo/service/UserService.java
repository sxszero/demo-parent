package com.zhwl.demo.service;

import com.zhwl.demo.po.User;

import java.util.List;

/**
 * @desc 用户业务逻辑层
 * @author yxs
 * @date 2021-09-27 15:55
 */
public interface UserService {
    /***
     * @desc 分页查询用户列表
     * @author yxs
     * @update yxs
     * @date 2021-10-12 15:22
     * @param username 用户名
     * @return 用户列表
     */
    List<User> pageGetUserList(String username);
}