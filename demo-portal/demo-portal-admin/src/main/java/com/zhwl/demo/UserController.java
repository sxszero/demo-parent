package com.zhwl.demo;

import com.zhwl.demo.base.AjaxResult;
import com.zhwl.demo.po.User;
import com.zhwl.demo.service.UserService;
import com.zhwl.ruoyi.common.core.controller.BaseController;
import com.zhwl.ruoyi.common.core.page.TableDataInfo;
import com.zhwl.ruoyi.common.utils.poi.ExcelUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @desc 用户处理器
 * @author yxs
 * @date 2021-10-12 14:47
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController {
    private String prefix = "physical/user";
    @Autowired
    private UserService userService;

    /***
     * @desc 跳转到用户列表
     * @author yxs
     * @update yxs
     * @date 2021-10-12 15:12
     */
    @RequiresPermissions("user:list:view")
    @GetMapping("/list")
    public String toUserList(ModelMap modelMap){
        return prefix + "/list";
    }

    /***
     * @desc 分页查询用户列表
     * @author yxs
     * @update yxs
     * @date 2021-10-12 15:21
     */
    @RequiresPermissions("user:list")
    @PostMapping("/pageGetUserList")
    @ResponseBody
    public TableDataInfo pageGetUserList(String username){
        startPage();
        List<User> list = userService.pageGetUserList(username);
        return getDataTable(list);
    }

    /***
     * @desc 导出用户
     * @author yxs
     * @update yxs
     * @date 2021-10-12 15:36
     */
    @RequiresPermissions("user:export")
    @PostMapping("/exportUser")
    @ResponseBody
    public AjaxResult exportUser(String username){
        List<User> list = userService.pageGetUserList(username);
        ExcelUtil<User> util = new ExcelUtil<User>(User.class);
        return util.exportExcel(list, "用户管理");
    }
}
