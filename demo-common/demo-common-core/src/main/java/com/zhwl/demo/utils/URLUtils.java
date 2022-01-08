package com.zhwl.demo.utils;

import lombok.extern.slf4j.Slf4j;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/**
 * @author yxs
 * @desc URL工具类
 * @date 2021-04-01 13:24
 */
@Slf4j
public class URLUtils {

    /***
     * @desc 编码
     * @author yxs
     * @update yxs
     * @date 2021-04-01 13:26
     * @param url url
     * @return 编码结果
     */
    public static String encode(String url) {
        try {
            return URLEncoder.encode(url, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            log.error("编码失败",e);
            return "";
        }
    }

    public static void main(String[] args) {
        log.info(encode("upload_id"));
    }

}
