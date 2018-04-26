package com.springmvc_eg2.service;

import java.util.List;

import com.springmvc_eg2.model.User;

public interface UserService {
	
	public List<User> getUserList();
	
	public User login(String username, String password);
}
