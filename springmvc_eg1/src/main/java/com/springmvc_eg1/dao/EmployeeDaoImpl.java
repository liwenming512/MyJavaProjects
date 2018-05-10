package com.springmvc_eg1.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.springmvc_eg1.model.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	public List<Employee> getEmployeeList() {
		List<Employee> employeeList = new ArrayList<Employee>();
		
		Employee emp1 = new Employee();
		emp1.setId(1);
		emp1.setFirstname("Tom");
		emp1.setLastname("Bruce");
		employeeList.add(emp1);
		
		Employee emp2 = new Employee();
		emp2.setId(2);
		emp2.setFirstname("Jerry");
		emp2.setLastname("ana");
		employeeList.add(emp2);
		
		return employeeList;
		
	}

}
