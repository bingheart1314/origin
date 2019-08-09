package com.bingheart.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bingheart.dao.mapp.NovelMapper;
import com.bingheart.entity.Novel;
import com.bingheart.service.NovelService;
@Service
public class NovelServiceImp implements NovelService{

	@Autowired
	private NovelMapper novelMapper;

	public List<Novel> getRecommend() {
		// TODO Auto-generated method stub
		return novelMapper.getRecommend();
	}
	
}
