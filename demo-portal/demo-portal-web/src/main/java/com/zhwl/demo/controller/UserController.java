package com.zhwl.demo.controller;

import com.zhwl.demo.service.UserService;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @desc 用户处理器
 * @author yxs
 * @date 2022-01-03 13:40
 */
@RestController
@RequestMapping("/user")
@Api(tags = "用户模块")
@Slf4j
@Validated
public class UserController {
    @Autowired
    private UserService userService;
}
