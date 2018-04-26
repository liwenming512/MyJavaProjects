package com.springmvc_eg2.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc_eg2.model.User;
import com.springmvc_eg2.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/login")
	public String login(User user, HttpServletRequest request){
		User loginUser = userService.login(user.getUsername(), user.getPassword());
		if (loginUser == null){
			request.setAttribute("user", user);
			request.setAttribute("errorMsg", "登录失败，用户名或密码错误。");
			return "login";
		}else{
			HttpSession session = request.getSession();
			session.setAttribute("currUser", loginUser);
			return "redirect:/main.jsp";
		}
	}

	@RequestMapping("/getUserList")
	public List<User> getUserList(){
		return userService.getUserList();
	}
}
