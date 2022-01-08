package com.zhwl.demo.base;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * @desc 分页响应信息
 * @auther yxs
 * @date 2021/5/23 10:59
 */
@Getter
@Setter
public class PageResponse<T> {
    /**
     * 总页数
     */
    private Integer pages;
    /**
     * 总记录数
     */
    private Long total;
    /**
     * 具体数据
     */
    private List<T> data;
}
