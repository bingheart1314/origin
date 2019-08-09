package com.bingheart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bingheart.entity.Novel;
import com.bingheart.service.NovelService;
@Controller
public class NovelController {
	
	@Autowired
	private NovelService novelService;
	
    @	RequestMapping("/mm")
    @ResponseBody
	public List<Novel> index() {
		return novelService.getRecommend();
	}

}
