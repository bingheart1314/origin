package com.bingheart.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bingheart.entity.Novel;

public interface NovelService {
	public List<Novel> getRecommend();
	
	public List<Novel> getTypeIndex(String type_name,int start,int end);
	
	
    
    public List<Novel> getAuthor(String author_name,Integer start);
    
    
    public int getgetAuthorCount(String author_name);
    
    
    
    public List<Novel> getType(String typeName,Integer start);
   
    public int getTypeCount(String typeName);

    public Novel getBookNovel(String nove_name);
}
