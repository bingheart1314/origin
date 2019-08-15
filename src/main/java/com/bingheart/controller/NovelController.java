package com.bingheart.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bingheart.entity.Novel;
import com.bingheart.service.NovelService;
import com.bingheart.util.url.pag.Page_Url;
@Controller
public class NovelController {
	
	@Autowired
	private NovelService novelService;
	
    @	RequestMapping(Page_Url.index_html)
	public String index(Map<String, Object> map) {
    	
    	map.put("classical", novelService.getTypeIndex("武侠仙侠", 0, 15));
    	map.put("techBattle", novelService.getTypeIndex("奇幻玄幻", 0, 15));
    	map.put("returnOfTheStrong", novelService.getTypeIndex("历史军事", 0, 15));
    	map.put("urbanEntertainment", novelService.getTypeIndex("都市娱乐", 0, 15));//都市娱乐
    	map.put("recommend", novelService.getRecommend());//小说推荐
		return Page_Url.index;
	}
    //查询所有小说
    @	RequestMapping(Page_Url.allnovel_html)
    public  void allNovel() {
    	
    }

	//查询作者名下 小说
    @	RequestMapping(Page_Url.author_html)
    public String author(String author_name,Integer page ,Map<String, Object> map,HttpServletRequest request,HttpServletResponse response) throws IOException {
    	
    	if (author_name==null||author_name.equals("")) {
    		 response.sendRedirect(Page_Url.allnovel_html);
		}else {
			map.put("author", novelService.getAuthor(author_name,page));
			map.put("count", novelService.getgetAuthorCount(author_name));
			return Page_Url.author;
		}
    	return "";
    	  	
    }
    
    //根据类型查询小说
    @RequestMapping(Page_Url.classification_html)
    public String type(String type_name,Integer page ,Map<String, Object> map) {
    	
    	if (type_name==null||type_name.equals("")) {
   		
    		
		}else {
			if (page==null||page==0) {
				page=0;
			}
			int  count =novelService.getTypeCount(type_name);
			System.out.println(page);
			List<Novel> novelLists =novelService.getType(type_name, page);
			System.out.println(novelLists.size());
			map.put("novelLists",novelLists );
			map.put("count", count);
			map.put("page", page);
			return Page_Url.classification;
		}
    	return"";
    }
    
    //查询小说
    // 查询 新书
    @RequestMapping(Page_Url.catalog_html)
    public String getBook(String novel_name,Map<String, Object> map) {
    	
    	if (novel_name==null||novel_name.equals("")) {
   		 
		}else {
			map.put("book", novelService.getBookNovel(novel_name));
			return Page_Url.catalog;
		}
    	return"";
    }
    
    /*
    //根据类型查询小说
    @RequestMapping("")
    public String type() {
    	return"";
    }
    //根据书名 查询小说
    @RequestMapping("")
    public String book_name() {
    	return"";
    }
    //根据排名查询小说
    @RequestMapping("")
    public String ranking() {
    	return"";
    }
    // 查询连载小说
    @RequestMapping("")
    public String serialization() {
    	return"";
    }
    
    // 查询 新书
    @RequestMapping("")
    public String new_book() {
    	return"";
    }
    
    // 视频 区
    @RequestMapping("")
    public String video() {
    	return"";
    }
    */
}
