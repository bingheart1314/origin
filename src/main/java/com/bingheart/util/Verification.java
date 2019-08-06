package com.bingheart.util;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
@Aspect
@Component
public class Verification {

	
	HttpSession session;
	
	@Pointcut("execution(public * com.bingheart.controller..*.*(..))")
	public void session_ID() {
	}


	

	
}
