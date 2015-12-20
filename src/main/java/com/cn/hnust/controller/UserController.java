package com.cn.hnust.controller;

import com.cn.hnust.pojo.User;
import com.cn.hnust.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: LX
 * Date: 2015/12/20 11:33
 * Desc:
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private IUserService userService;

    @RequestMapping("/showUser")
    public String toIndex(HttpServletRequest request, Model model) {
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = this.userService.getUserById(userId);
        model.addAttribute("user", user);
        return "showUser";


    }

    @RequestMapping("/insertUser")
    public String insert(HttpServletRequest request, Model model) {
        String username = request.getParameter("username");

        User user = new User();
        user.setUserName(username);
        user.setAge(12);
        user.setPassword("faf");
        this.userService.insertUser(user);

        return "showUser";

    }

    @RequestMapping("/listUser")
    public String get(HttpServletRequest request, Model model) {
        List<User> list = this.userService.select();

        model.addAttribute("list", list);

        return "listUser";


    }
}