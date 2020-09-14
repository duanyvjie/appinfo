package com.hisoft.appinfo.interceptor;


import com.hisoft.appinfo.pojo.BackendUser;
import com.hisoft.appinfo.pojo.DevUser;
import com.hisoft.appinfo.tools.Constants;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-07 09:21:46
 **/
public class DevInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        DevUser  user = (DevUser)request.getSession().getAttribute(Constants.USER_DEV_SESSION);
        if (user == null){
            response.sendRedirect(request.getContextPath()+"/error.jsp");
            return false;
        }
        return true;
    }
}
