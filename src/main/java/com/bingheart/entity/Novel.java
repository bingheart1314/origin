package com.bingheart.entity;

import java.util.List;

public class Novel {
	private int novel_id;
	private String novel_name;
	private String author;
	private String is_finished;
	private Double word_number;
	private Double recommend;
	private String narration;
	private double click_number;
	private String novel_type_name;
	private String update_url;
	private String img;
	public int getNovel_id() {
		return novel_id;
	}
	public void setNovel_id(int novel_id) {
		this.novel_id = novel_id;
	}
	public String getNovel_name() {
		return novel_name;
	}
	public void setNovel_name(String novel_name) {
		this.novel_name = novel_name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getIs_finished() {
		return is_finished;
	}
	public void setIs_finished(String is_finished) {
		this.is_finished = is_finished;
	}
	public Double getWord_number() {
		return word_number;
	}
	public void setWord_number(Double word_number) {
		this.word_number = word_number;
	}
	public Double getRecommend() {
		return recommend;
	}
	public void setRecommend(Double recommend) {
		this.recommend = recommend;
	}
	public String getNarration() {
		return narration;
	}
	public void setNarration(String narration) {
		this.narration = narration;
	}
	public double getClick_number() {
		return click_number;
	}
	public void setClick_number(double click_number) {
		this.click_number = click_number;
	}
	public String getUpdate_url() {
		return update_url;
	}
	public void setUpdate_url(String update_url) {
		this.update_url = update_url;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getNovel_type_name() {
		return novel_type_name;
	}
	public void setNovel_type_name(String novel_type_name) {
		this.novel_type_name = novel_type_name;
	}
}
