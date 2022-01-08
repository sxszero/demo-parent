package com.zhwl.demo.po;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.zhwl.demo.annotation.Excel;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;

/**
 * @desc 用户信息
 * @author yxs
 * @date 2021-09-27 16:10
 */
@Getter
@Setter
public class User {
    // 标识
    @Excel(name = "标识")
    private Integer id;
    // 用户唯一标识
    @Excel(name = "用户唯一标识")
    private String unionid;
    // 用户名
    @Excel(name = "用户名")
    private String username;
    // 创建时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss", type = Excel.Type.EXPORT)
    private Date createdTime;
    // 更新时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss", type = Excel.Type.EXPORT)
    private Date modifiedTime;
}
