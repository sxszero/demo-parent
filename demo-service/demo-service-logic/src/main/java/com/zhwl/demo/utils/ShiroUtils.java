package com.zhwl.demo.utils;

import com.zhwl.demo.po.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.BeanUtils;


/**
 * 工具类
 *
 * 测试
 */
public class ShiroUtils {

    public static Subject getSubject()
    {
        return SecurityUtils.getSubject();
    }

    public static Session getSession()
    {
        return SecurityUtils.getSubject().getSession();
    }

    public static void logout()
    {
        getSubject().logout();
    }

    public static User getUser(){
        User user = null;
        Object obj = getSubject().getPrincipal();
        if(StringUtils.isNotNull(obj)){
            user = new User();
            copyBeanProp(user,obj);
        }
        return user;
    }

    /**
     * Bean属性复制工具方法。
     *
     * @param dest 目标对象
     * @param src 源对象
     */
    public static void copyBeanProp(Object dest, Object src)
    {
        try
        {
            BeanUtils.copyProperties(src, dest);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }


}
