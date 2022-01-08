package com.zhwl.demo.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.util.List;
import java.util.Map;

/**
 * @desc 数据对象转换工具类
 * @author yxs
 * @date 2020/4/3 12:00
 */
public class FastJsonUtils {
    /***
     * @desc 对象转json字符串
     * @author yxs
     * @date 2019/3/22 9:29
     * @param obj 对象
     * @return json字符串
     */
    public static String convertObjToJsonString(Object obj){
        return JSON.toJSONString(obj);
    }

    /**
     * @desc 字符串转普通对象
     * @author yxs
     * @update yxs
     * @date 2020/7/8 23:49
     * @param jsonStr json字符串
     * @param clazz 普通java对象
     * @return 普通java对象
     */
    public static <T> T convertJsonStringToObj(String jsonStr , Class<T> clazz){
        JSONObject jsonObj = JSONObject.parseObject(jsonStr);
        T t = JSON.toJavaObject(jsonObj, clazz);
        return t;
    }

    /***
     * @desc 字符串转数组
     * @author yxs
     * @update yxs
     * @date 2020/2/25 17:00
     * @param jsonStr json字符串
     * @param clazz 普通java对象
     * @return 数组
     */
    public static <T> List<T> convertJsonStringToArray(String jsonStr , Class<T> clazz){
        return JSONArray.parseArray(jsonStr, clazz);
    }

    /***
     * @desc 字符串转map
     * @author yxs
     * @update yxs
     * @date 2019/4/7 21:53
     * @param jsonStr json字符串
     * @return map对象
     */
    public static Map convertJsonStringToMap(String jsonStr ){
        Map map = (Map) JSON.parse(jsonStr);
        return map;
    }
}
