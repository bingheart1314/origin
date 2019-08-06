package com.bingheart.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.bingheart.dao.mapp.UserMapper;
import com.bingheart.entity.User;
import com.bingheart.service.UserService;

@RestController
public class Test {

	@Autowired
	private UserService userService;
	@ResponseBody
	@RequestMapping("/hello")
	public User hello() {
		return userService.getUser("1621600481", "qq1621600481");
	}

	

}
