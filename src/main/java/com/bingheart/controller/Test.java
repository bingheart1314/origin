package com.bingheart.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.bingheart.dao.mapp.UserMapper;
import com.bingheart.entity.Novel;
import com.bingheart.entity.User;
import com.bingheart.service.NovelService;
import com.bingheart.service.UserService;

@RestController
public class Test {

	@Autowired
	private UserService userService;
	
	@Autowired
	private NovelService novelService;
	
	@ResponseBody
	@RequestMapping("/hello")
	public List<Novel> hello() {
		return novelService.getRecommend();
	}

	

}
