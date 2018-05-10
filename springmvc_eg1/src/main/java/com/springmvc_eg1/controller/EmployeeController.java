package com.springmvc_eg1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.springmvc_eg1.service.EmployeeManager;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeManager empManager;

	@SuppressWarnings("rawtypes")
	@RequestMapping("/getEmployeeList")
	public ModelAndView getEmployeeList(){
		ModelAndView mv = new ModelAndView();
		List empList = empManager.getEmployeeList();
		mv.addObject("employees", empList);
		return mv;
	}
}
