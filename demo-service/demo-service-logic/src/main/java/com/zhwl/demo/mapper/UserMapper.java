package com.zhwl.demo.mapper;

import com.zhwl.demo.mapper.provider.UserMapperProvider;
import com.zhwl.demo.po.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author yxs
 * @desc
 * @date 2022-01-03 11:46
 */
@Repository
@Mapper
public interface UserMapper {
    /* ********************************************* 后台 ********************************************* */
    /***
     * @desc 分页查询用户列表
     * @author yxs
     * @update yxs
     * @date 2021-10-12 15:24
     * @param username 用户名
     * @return 用户列表
     */
    @SelectProvider(type = UserMapperProvider.class,method = "pageGetUserList")
    List<User> pageGetUserList(@Param("username") String username);

    /**
     * @desc   插入用户信息
     * @author
     * @date 2022-01-10 09:07:52
     * @param user
     * @return
     **/
    int insertUser(User user);

    /**
     * @desc
     * @author Administrator
     * @date 2022-01-12 10:35:04
     * @param username
     * @return
     **/
    User selectUserByUserName(String username);
}
