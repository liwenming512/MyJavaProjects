package com.springmvc_eg2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc_eg2.dao.UserMapper;
import com.springmvc_eg2.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;

	public List<User> getUserList(){
		return userMapper.getUserList();
	}

	public User login(String username, String password) {
		User loginUser = userMapper.findUserByUserName(username);
		if (loginUser.getPassword().equals(password)){
			return loginUser;
		}else{
			return null;
		}
	}
	
}
