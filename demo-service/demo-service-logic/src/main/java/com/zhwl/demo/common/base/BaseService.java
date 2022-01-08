package com.zhwl.demo.common.base;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhwl.demo.base.PageRequest;
import com.zhwl.demo.base.PageResponse;

import java.util.List;

/**
 * @desc 业务逻辑层
 * @author yxs
 * @date 2021-11-08 20:11
 */
public class BaseService {

    protected void startPage(PageRequest pageRequest){
        PageHelper.startPage(pageRequest.getPageIndex(), pageRequest.getPageSize());
    }

    protected PageResponse getPageResponse(List<?> list){
        PageInfo<?> pageInfo = new PageInfo<>(list);
        PageResponse response = new PageResponse();
        long total = pageInfo.getTotal();
        int pages = pageInfo.getPages();
        response.setData(list);
        response.setPages(pages);
        response.setTotal(total);
        return response;
    }


}
