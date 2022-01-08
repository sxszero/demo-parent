package com.zhwl.demo.mapper.provider;

import com.zhwl.demo.utils.StringUtils;
import org.apache.ibatis.jdbc.SQL;

/**
 * @author yxs
 * @desc
 * @date 2022-01-03 11:46
 */
public class UserMapperProvider {

    public String pageGetUserList(String username){
        SQL sql = new SQL();
        sql.SELECT("id,unionid,username,created_time,modified_time");
        sql.FROM("physical_user");
        if(StringUtils.isNotEmpty(username)){
            sql.WHERE("username like '%"+username+"%'");
        }
        sql.ORDER_BY("id DESC");
        return sql.toString();
    }

}
