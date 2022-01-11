package com.zhwl.demo.service.impl;

import com.zhwl.demo.common.base.BaseService;
import com.zhwl.demo.mapper.UserMapper;
import com.zhwl.demo.po.User;
import com.zhwl.demo.service.UserService;
import com.zhwl.demo.utils.StringUtils;
import com.zhwl.ruoyi.exception.BusinessException;
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

    @Override
    public int insertUser(User user) {
        return userMapper.insertUser(user);
    }

    @Override
    public String importUser(List<User> userList, boolean updateSupport, String operName) {
        if(StringUtils.isNotNull(userList) || userList.size() == 0){
            throw new BusinessException("导入数据不能为空");
        }
        return null;
    }
}
