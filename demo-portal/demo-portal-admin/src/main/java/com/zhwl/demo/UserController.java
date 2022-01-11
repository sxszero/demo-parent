package com.zhwl.demo;

import com.zhwl.demo.base.AjaxResult;
import com.zhwl.demo.po.User;
import com.zhwl.demo.service.UserService;
import com.zhwl.demo.utils.ShiroUtils;
import com.zhwl.ruoyi.common.core.controller.BaseController;
import com.zhwl.ruoyi.common.core.page.TableDataInfo;
import com.zhwl.ruoyi.common.utils.poi.ExcelUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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

    /**
     * @desc  跳转新增用户tap
     * @author Administrator
     * @date 2022-01-11 15:01:04
     * @return
     **/
    @GetMapping("/add")
    public String add(){
        return prefix + "/add";
    }

    /**
     *
     * @desc  新增用户信息
     * @author Administrator
     * @date 2022-01-11 14:51:35
     * @return
     **/
    @RequiresPermissions("user:add")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addUser(@Validated User user){

        return toAjax(userService.insertUser(user));
    }

    @RequiresPermissions("user:import")
    @PostMapping("importUser")
    @ResponseBody
    public AjaxResult importUser(MultipartFile file,boolean updateSupport)throws Exception{
        ExcelUtil<User> util = new ExcelUtil<>(User.class);
        List<User> userList = util.importExcel(file.getInputStream());
        String operName = ShiroUtils.getUser().getUsername();
        String message = userService.importUser(userList, updateSupport, operName);
        return AjaxResult.success(message);
    }

    @RequiresPermissions("user:list:view")
    @GetMapping("/importTemplate")
    @ResponseBody
    public AjaxResult importTemplate(){
        ExcelUtil<User> userExcelUtil = new ExcelUtil<>(User.class);
        return userExcelUtil.importTemplateExcel("用户信息");
    }
}
