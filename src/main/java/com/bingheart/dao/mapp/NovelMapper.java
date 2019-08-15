package com.bingheart.dao.mapp;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bingheart.entity.Novel;

public interface NovelMapper {
	@Select("SELECT * from tb_novel order by recommend DESC,click_number DESC limit 0,4")
	public List<Novel> getRecommend();
	
	@Select("SELECT * from tb_novel  where novel_type_name= #{type_name} order by recommend DESC ,click_number LIMIT   #{start},#{end}")
	public List<Novel> getTypeIndex(@Param("type_name")String type_name,@Param("start")int start,@Param("end")int end);
    
    
    @Select("SELECT * from tb_novel  where author=#{author_name}  order by recommend DESC ,click_number DESC  LIMIT  #{start} , 50")
    public List<Novel> getAuthor(@Param("author_name")String author_name,@Param("start")int start);
    
    @Select("Select count(*) from tb_novel  where  author=#{author_name} ")
    public int getgetAuthorCount(String author_name);
    
    @Select("SELECT * from tb_novel  where novel_type_name=#{typeName}  order by recommend DESC ,click_number DESC  LIMIT #{start}  , 50")
    public List<Novel> getType(@Param("typeName")String typeName,@Param("start")int start);
    
    @Select("SELECT count(*) from tb_novel  where  novel_type_name=#{typeName} ")
    public int getTypeCount(String typeName);
    
    @Select("SELECT * from tb_novel where novel_name=#{nove_name}")
    public Novel getBookNovel(String nove_name);

}
