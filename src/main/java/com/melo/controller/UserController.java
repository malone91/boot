package com.melo.controller;

import com.melo.service.UserService;
import com.melo.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 业务控制层
 * Created by Ablert
 * on 2018/5/23.
 * @author Ablert
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/index")
    public String index() {
        return "user/index";
    }

    /**
     * 获取用户信息
     * @param name
     * @return
     */
    @RequestMapping(value = "/show")
    @ResponseBody
    public String show(@RequestParam(value = "name") String name) {
        User user = userService.findUserByName(name);
        if (user != null) {
            return user.getPassword();
        } else {
            return null;
        }
    }
}
