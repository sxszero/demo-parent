package com.zhwl.demo.utils;

import org.apache.commons.codec.binary.Base64;

/**
 * @desc Base64工具类
 * @author yxs
 * @date 2019/5/11 11:00
 */
public class Base64Utils {
    /***
     * @desc 编码
     * @author yxs
     * @update yxs
     * @date 2019/5/11 11:02
     * @param bytes 字节流
     * @return 编码字符串
     */
    public static String encodeToString(byte[] bytes){
        byte[] encode = Base64.encodeBase64(bytes);
        String str= new String (encode);
        return str;
    }

    /***
     * @desc 解码字符串
     * @author yxs
     * @update yxs
     * @date 2019/5/11 11:02
     * @param text 字节流
     * @return 解码字符串
     */
    public static String decodeToString(String text){
        byte[] decode = Base64.decodeBase64(text);
        String str= new String (decode);
        return str;
    }
}
