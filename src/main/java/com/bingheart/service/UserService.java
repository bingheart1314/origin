package com.bingheart.service;

import com.bingheart.entity.User;

public interface UserService {
	
    User getUser(String login_name,String user_pass);
    int setUser(User user);
}
