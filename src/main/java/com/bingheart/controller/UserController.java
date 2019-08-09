package com.bingheart.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bingheart.entity.User;
import com.bingheart.service.UserService;
import com.bingheart.util.Verification;
import com.bingheart.util.date.LocalTime;
import com.bingheart.util.url.pag.Page_Url;

@Controller
public class UserController implements Page_Url{

	@Autowired
    private UserService userService;
	
    @Autowired
	private Verification verification;
    
    @	RequestMapping(Page_Url.index_html)
	public String index() {
		return Page_Url.index;
	}
    
    @GetMapping(Page_Url.login_html)
	public String login(HttpServletRequest request,HttpServletResponse response) throws IOException {
        Object object = request.getSession().getAttribute("user");
    	if (object!=null) {
    		 response.sendRedirect(Page_Url.index_html);
		}
		return Page_Url.login;
	}
    
    
    
    @GetMapping(Page_Url.register_html)
	public String register(HttpServletRequest request,HttpServletResponse response) throws IOException {
        Object object = request.getSession().getAttribute("user");
    	if (object!=null) {
    		 response.sendRedirect(Page_Url.index_html);
		}
		return Page_Url.register;
	}
    
    
    
    @	PostMapping(Page_Url.login_html)
	public  boolean Boolean(String username,String password,HttpServletRequest request,HttpServletResponse response) throws IOException {
        Object object = request.getSession().getAttribute("user");
    	if (object!=null) {
    		 response.sendRedirect(Page_Url.index_html);
    		 return true;
		}
    	User user = userService.getUser(username,password);
		if(user==null) {
			 response.sendRedirect("/login.html");
			 return false;
		}else {
			request.getSession().setAttribute("user", user);
		}
		 response.sendRedirect(Page_Url.index_html);
		 return true;
	}
    
    @PostMapping("/register.html")
	public void register(String user_pass,String nick_name,String mail,HttpServletRequest request,HttpServletResponse response) throws IOException {
        Object object = request.getSession().getAttribute("user");
    	if (object!=null) {
    		 response.sendRedirect(Page_Url.index_html);
		}
		User user = new User();
		user.setLogin_name(mail);
		user.setUser_pass(user_pass);
		user.setNick_name(nick_name);
		user.setIn_date(LocalTime.getDate());
		user.setLast_login_date(LocalTime.getDate());
		user.setStatus(1);
		user.setMail(mail);
		userService.setUser(user);
		User user1 = userService.getUser(mail,user_pass);
		if(user1==null) {
			 response.sendRedirect("/register.html");
		}else {
			 request.getSession().setAttribute("user", user);
			 response.sendRedirect(Page_Url.index_html);
		}
		
	}
    
    
    

	

}
