package com.springmvc_eg1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc_eg1.dao.EmployeeDao;
import com.springmvc_eg1.model.Employee;

@Service
public class EmployeeManagerImpl implements EmployeeManager {

	@Autowired
	EmployeeDao empDao;

	public List<Employee> getEmployeeList(){
		return empDao.getEmployeeList();
	}
	
}
