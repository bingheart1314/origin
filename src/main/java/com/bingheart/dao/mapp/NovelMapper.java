package com.bingheart.dao.mapp;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.bingheart.entity.Novel;

public interface NovelMapper {
	@Select("SELECT * from tb_novel order by recommend DESC,click_number DESC limit 0,5")
	public List<Novel> getRecommend();

}
