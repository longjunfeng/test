package com.javazyw.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.javazyw.zk.util.ResourcesUtils;


public class SessionInterceptor extends HandlerInterceptorAdapter {
	
	private static final Log log = LogFactory.getLog(SessionInterceptor.class);
	
	@Override  
     public  boolean preHandle(HttpServletRequest request,HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        String url=request.getServletPath();
        log.info("url==>>" + url);
        
        if (url.equals("/toLogin") || url.equals("/login")) {
        	System.out.println("==========");
    		return true;
    	}
        
        if(session != null && session.getAttribute(ResourcesUtils.SESSION_KEY) != null){
            
            return true;
        } else {
        	 
             response.sendRedirect(request.getContextPath() + "/toLogin");
             return false;
        }
    }
}
