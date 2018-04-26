package com.springmvc_eg2.dao;

import java.util.List;

import com.springmvc_eg2.model.User;

public interface UserMapper {
	
	public User findUserById(int Id);
	
	public User findUserByUserName(String username);

	public List<User> getUserList();
	
	public Boolean addUser(User user);
	
	public Boolean deleteUserById(int Id);
	
	public Boolean updateUser(User user);
	
}
