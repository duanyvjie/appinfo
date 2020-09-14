package com.hisoft.appinfo.filter;

import com.hisoft.appinfo.pojo.DevUser;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SysFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
//		System.out.println("TestFilter init()===========");

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("SysFilter doFilter()===========");
		HttpServletRequest rq = (HttpServletRequest)request;
		HttpServletResponse rp = (HttpServletResponse)response;
		DevUser userSession = (DevUser)rq.getSession().getAttribute("userSession");
		if(null == userSession){
			rp.sendRedirect("/SMBMS/error.jsp");
		}else{
			chain.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
//		System.out.println("TestFilter destroy()===========");
	}

}
