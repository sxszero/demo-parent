package com.zhwl.demo.base;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotNull;

/**
 * @desc 分页请求信息
 * @author yxs
 * @date 2021-11-08 17:57
 */
@Getter
@Setter
public class PageRequest {
    // 当前页
    @NotNull(message = "当前页不能为空")
    private Integer pageIndex;
    // 页大小
    @NotNull(message = "页大小不能为空")
    private Integer pageSize;
}
