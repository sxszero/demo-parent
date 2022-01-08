package com.zhwl.demo.utils;

import org.apache.commons.lang3.RandomStringUtils;

import java.util.UUID;

/**
 * @author yxs
 * @desc
 * @date 2020/12/19 10:31
 */
public class UUIDUtils {

    /***
     * @desc 获取uuid
     * @author yxs
     * @update yxs
     * @date 2020/4/21 14:00
     * @return uuid
     */
    public static String getUUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    /***
     * @desc 生成随机数字
     * @author yxs
     * @update yxs
     * @date 2021-06-19 20:43
     * @param count 位数
     * @return 随机数字
     */
    public static String getRandomNumeric(Integer count){
        return RandomStringUtils.randomNumeric(count).toLowerCase();
    }
}
