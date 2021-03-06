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

    /**
     *
     * @desc  插入用户信息
     * @author Administrator
     * @date 2022-01-10 09:06:08
     * @param user
     * @return 成功信息
     **/
    int insertUser(User user);

    /**
     * @desc   导入用户数据
     * @author Administrator
     * @date 2022-01-11 16:56:58
     * @param userList 用户列表数据
     * @param updateSupport 是否支持更新，如果已存在，则更新数据
     * @return
     **/
    //String importUser(List<User> userList, boolean updateSupport, String operName);

    /**
     * @desc   导入用户数据，无操作人员
     * @author Administrator
     * @date 2022-01-12 11:09:05
     * @param userList
     * @param updateSupport
     * @return
     **/
    String importUser(List<User> userList, boolean updateSupport);
}
