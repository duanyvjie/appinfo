package com.hisoft.appinfo.controller;

import com.hisoft.appinfo.dao.backenduser.BackendUserMapper;
import com.hisoft.appinfo.pojo.BackendUser;
import com.hisoft.appinfo.pojo.DevUser;
import com.hisoft.appinfo.tools.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 19:15:05
 **/
@Controller
@RequestMapping("/backend")
public class BackendController {
    @Autowired
    BackendUserMapper backendUserMapper;

    @RequestMapping("/login")
    public String tomanagerlogin(){
        return "backend_login";
    }

    @RequestMapping("/tomain")
    public String tomain(){
        return "backend_main";
    }

    @RequestMapping("/dologin")
    public String dologin(@RequestParam("userCode") String userCode,
                          @RequestParam("userPassword") String userPassword,
                          HttpSession session, Model model){
        BackendUser backendUser = backendUserMapper.getBackendUser(userCode);
        if (null != backendUser) {//登录成功
            if (!backendUser.getUserPassword().equals(userPassword)) {
                model.addAttribute("message","密码输入错误");
                return "redirect:/backend/login";
            }
            session.setAttribute(Constants.USER_BACKEND_SESSION, backendUser);
            return "redirect:/backend/tomain";
        } else {
            model.addAttribute("message","用户名不存在");
            return "redirect:/backend/login";
        }
    }

    @RequestMapping("/tocheck")
    public String tocheck(){
        return "backend_check";
    }
}
