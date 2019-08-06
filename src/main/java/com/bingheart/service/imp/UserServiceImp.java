package com.bingheart.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bingheart.dao.mapp.UserMapper;
import com.bingheart.entity.User;
import com.bingheart.service.UserService;
@Service
public class UserServiceImp implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	public User getUser(String login_name, String user_pass) {
		// TODO Auto-generated method stub
		return userMapper.getUser(login_name, user_pass);
	}

	public int setUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.strUser(user);
	}

}
