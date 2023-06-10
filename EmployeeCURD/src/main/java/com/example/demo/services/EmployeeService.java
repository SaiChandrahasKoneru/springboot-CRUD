package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Employee;
import com.example.demo.repository.EmployeeRepository;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeRepository er;
	public List<Employee> getEmployee(){
		return er.findAll();
	}
	public Employee getEmployeeById(int id) {
		return er.findById(id).orElse(null);
	}
	public Employee addEmployee(Employee e) {
		er.save(e);
		return e;
	}
	public Employee updateEmployee(Employee e) {
		er.save(e);
		return e;
	}
	public int deleteEmployee(int id) {
		if(er.existsById(id)) {
			er.deleteById(id);
			return 1;
		}
		return 0;
	}
}
