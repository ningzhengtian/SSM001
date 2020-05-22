package com.swjd.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
        String requestUri=request.getRequestURI();//获取请求地址
        //1.如果是登录页面我们放行
        if (requestUri.indexOf("login")>=0||requestUri.indexOf("Login")>=0||requestUri.indexOf("Main")>=0){
            return true;

        }
        //2.如果用户登录过放行
        HttpSession session=request.getSession();
        if (session.getAttribute("activeName")!=null){
            return  true;
        }
        //不放行就回到登录页面
        request.getRequestDispatcher("/toLogin").forward(request,response);
        return false;
    }


}
