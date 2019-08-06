package com.bingheart.dao.mapp;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bingheart.entity.User;

public interface UserMapper {
	
	@Select("SELECT * FROM tb_user where login_name =#{login_name} and user_pass=#{user_pass}")
	 User getUser(@Param("login_name") String login_name,@Param("user_pass")String user_pass);
    
     int strUser(User user);
}
