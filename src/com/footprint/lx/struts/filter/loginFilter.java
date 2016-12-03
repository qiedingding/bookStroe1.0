package com.footprint.lx.struts.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.footprint.dao.entity.admin;

public class loginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException 
	{ 
		RequestDispatcher dispatcher = request.getRequestDispatcher("bgLogin.jsp"); 
		HttpServletRequest userRequest = (HttpServletRequest)request; 
		admin admin = (admin)userRequest.getSession().getAttribute("admin"); 
		if(admin == null || admin.getName() == null || admin.getName().trim().length()<1) 
		{ 
			System.out.println("用户未登录!"); 
			dispatcher.forward(request,response); 
			return; 
		} 
		System.out.println("用户已登录!"); 
		chain.doFilter(request,response); 
	} 
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

}
