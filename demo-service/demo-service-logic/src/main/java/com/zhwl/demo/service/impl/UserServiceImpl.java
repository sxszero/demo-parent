package com.zhwl.demo.service.impl;

import com.zhwl.demo.common.base.BaseService;
import com.zhwl.demo.mapper.UserMapper;
import com.zhwl.demo.po.User;
import com.zhwl.demo.service.UserService;
import com.zhwl.demo.utils.StringUtils;
import com.zhwl.ruoyi.common.exception.BusinessException;
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

    /**
     * @desc  导入用户数据
     * @author Administrator
     * @date 2022-01-12 09:38:04
     * @param userList 用户数据列表
     * @param updateSupport 是否支持更新，如果已存在，则进行更新
     * @return
     **/
    @Override
    public String importUser(List<User> userList, boolean updateSupport) {
        if(StringUtils.isNull(userList) || userList.size() == 0){
            throw new BusinessException("导入数据不能为空");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for(User user : userList){
            try {
                //验证是否存在这个用户
                User u = userMapper.selectUserByUserName(user.getUsername());
                if (StringUtils.isNull(u)){
                    insertUser(user);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、账号 " + user.getUsername() + " 导入成功");
                }
                else {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、账号 " + user.getUsername() + " 已存在");
                }
            } catch (Exception e) {
                failureNum++;
                String msg = "<br/>" + failureNum + "、账号 " + user.getUsername() + " 导入失败：";
                failureMsg.append(msg + e.getMessage());
                log.error(msg, e);
            }
        }
        if (failureNum > 0)
        {
            failureMsg.insert(0, "很抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
            throw new BusinessException(failureMsg.toString());
        }
        else
        {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
        }
        return successMsg.toString();
    }
}
