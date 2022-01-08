package com.zhwl.demo.utils;

/**
 * @desc 字符串截取工具类
 * @author yxs
 * @date 2021-07-31 11:51
 */
public class StringSplitUtils {

    /***
     * @desc 根据指定长度截取字符串
     * @author yxs
     * @update yxs
     * @date 2021-07-31 11:52
     * @param str 字符串
     * @param length 长度
     * @return 字符串
     */
    public static String subStr(String str, int length) throws Exception {
        byte[] bytes = str.getBytes("Unicode");
        int n = 0; // 表示当前的字节数
        int i = 2; // 要截取的字节数，从第3个字节开始
        for (; i < bytes.length && n < length; i++) {
            // 奇数位置，如3、5、7等，为UCS2编码中两个字节的第二个字节
            if (i % 2 == 1) {
                n++; // 在UCS2第二个字节时n加1
            } else {
                // 当UCS2编码的第一个字节不等于0时，该UCS2字符为汉字，一个汉字算两个字节
                if (bytes[i] != 0) {
                    n++;
                }
            }
        }
        // 如果i为奇数时，处理成偶数
        if (i % 2 == 1) {
            // 该UCS2字符是汉字时，去掉这个截一半的汉字
            if (bytes[i - 1] != 0)
                i = i - 1;
                // 该UCS2字符是字母或数字，则保留该字符
            else
                i = i + 1;
        }
        return new String(bytes, 0, i, "Unicode");
    }
}
