package com.zhwl.demo.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * @author yxs
 * @desc
 * @date 2021-03-05 15:24
 */
public class TimeUtils {

    public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

    /***
     * @desc 格式化日期
     * @author yxs
     * @update yxs
     * @date 2020/4/27 10:16
     * @param date 日期
     * @param pattern 格式
     * @return 格式化后的日期
     */
    public static String formatTime(Date date, String pattern) {
        return new SimpleDateFormat(pattern).format(date);
    }

    /***
     * @desc 计算两个时间相差天数
     * @author yxs
     * @update yxs
     * @date 2021-11-09 10:14
     * @param smdate 小日期
     * @param bdate 大日期
     * @return 相差天数
     */
    public static long daysBetween(Date smdate, Date bdate) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        smdate = sdf.parse(sdf.format(smdate));
        bdate = sdf.parse(sdf.format(bdate));
        Calendar cal = Calendar.getInstance();
        cal.setTime(smdate);
        long time1 = cal.getTimeInMillis();
        cal.setTime(bdate);
        long time2 = cal.getTimeInMillis();
        long betweenDays = (time2 - time1) / (1000 * 3600 * 24);
        return betweenDays;
    }
}
