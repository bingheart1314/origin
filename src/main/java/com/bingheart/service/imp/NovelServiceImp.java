package com.bingheart.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bingheart.dao.mapp.NovelMapper;
import com.bingheart.entity.Novel;
import com.bingheart.service.NovelService;
@Service
public  class NovelServiceImp implements NovelService{

	@Autowired
	private NovelMapper novelMapper;

	public List<Novel> getRecommend() {
		// TODO Auto-generated method stub
		return novelMapper.getRecommend();
	}

	public List<Novel> getTypeIndex(String type_name, int start, int end) {
		// TODO Auto-generated method stub
		return novelMapper.getTypeIndex(type_name,start,end);
	}

	public List<Novel> getAuthor(String author_name, Integer start) {
		// TODO Auto-generated method stub
		if (start==null||start==0) {
			start=0;
		}else {
			start =start*50;
		}
		return novelMapper.getAuthor(author_name, start);
	}

	public int getgetAuthorCount(String author_name) {
		// TODO Auto-generated method stub
		return novelMapper.getgetAuthorCount(author_name);
	}

	public List<Novel> getType(String typeName, Integer  start) {
		// TODO Auto-generated method stub
		if (start==null||start==0) {
			start=0;
		}else {
			start =start*50;
		}
		System.out.println("开始"+start);
		return novelMapper.getType(typeName,  start);
	}

	public int getTypeCount(String typeName) {
		// TODO Auto-generated method stub
		return novelMapper.getTypeCount(typeName);
	}

	public Novel getBookNovel(String nove_name) {
		// TODO Auto-generated method stub
		return novelMapper.getBookNovel(nove_name);
	}




	
}
