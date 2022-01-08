package com.zhwl.demo.utils;

import lombok.extern.slf4j.Slf4j;
import org.springframework.util.DigestUtils;

import java.util.UUID;

/**
 * @desc MD5工具类
 * @author yxs
 * @date 2019/5/14 18:06
 */
@Slf4j
public class MD5Utils {

    private static final String ENCODE = "UTF-8";

    public static String getMd5(String text) {
        //加密后的字符串
        String encodeStr= DigestUtils.md5DigestAsHex(text.getBytes());
        return encodeStr.toUpperCase();
    }

    // 加盐
    public static String getSalt(){
        UUID uuid = UUID.randomUUID();
        String[] arr = uuid.toString().split("-");
        return arr[0].toLowerCase();
    }
}
