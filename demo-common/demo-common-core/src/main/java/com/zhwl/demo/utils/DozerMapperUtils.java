package com.zhwl.demo.utils;

import com.github.dozermapper.core.DozerBeanMapperBuilder;
import com.github.dozermapper.core.Mapper;

import java.util.ArrayList;
import java.util.List;

/**
 * @desc 转换工具类
 * @author yxs
 * @date 2020/4/20 17:02
 * @from https://blog.csdn.net/weixin_30492601/article/details/96552601
 */
public class DozerMapperUtils {
    private static Mapper dozer = DozerBeanMapperBuilder.buildDefault();

    /***
     * @desc 将src对象中的属性值复制到desc对象的同名属性中
     * @author yxs
     * @update yxs
     * @date 2020/4/20 17:05
     * @param src 源
     * @param desc 目标
     */
    public static void copyProperties(Object src, Object desc){
        dozer.map(src, desc);
    }

    /***
     * @desc 将src对象中的属性值复制到新建的desc对象的同名属性中
     * @author yxs
     * @update yxs
     * @date 2020/4/20 17:05
     * @param src 源
     * @param descClass 目标class
     * @return 生成的类
     */
    public static <T> T copyProperties(Object src, Class<T> descClass){
        if(src == null )
            return null;
        return (T)dozer.map(src, descClass);
    }

    /***
     * @desc 将srcList中的元素复制到元素类型为descClass的List集合中
     * @author yxs
     * @update yxs
     * @date 2020/4/20 17:11
     * @param srcList  源list
     * @param descClass 目标list 类
     * @return 返回结果
     */
    public static <T> List<T> copyList(@SuppressWarnings("rawtypes") List srcList, Class<T> descClass){
        List<T> descList = new ArrayList<T>();
        if (srcList != null){
            for (Object obj : srcList){
                T t = copyProperties(obj, descClass);
                descList.add(t);
            }
        }
        return descList;
    }
}
