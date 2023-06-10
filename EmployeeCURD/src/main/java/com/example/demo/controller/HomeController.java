package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import com.example.demo.model.Employee;
import com.example.demo.services.EmployeeService;


@Controller
@RequestMapping
public class HomeController {
	@Autowired
	private EmployeeService es;
	@GetMapping
	public String home(Model m) {
		System.out.println(es.getEmployee());
		m.addAttribute("employees", es.getEmployee());
		return "home.jsp";
	}
	@GetMapping("/create")
	public String create() {
		return "create.jsp";
	}
	@PostMapping("/create")
	public RedirectView createData(Employee e) {
		es.addEmployee(e);
		return new RedirectView("/");
	}
	@GetMapping("/update/{id}")
	public String update(@PathVariable int id,Model m) {
		m.addAttribute("employee",es.getEmployeeById(id));
		return "/update.jsp";
	}
	
	@PostMapping("/update")
	public RedirectView updateData(Employee e) {
		es.updateEmployee(e);
		return new RedirectView("/");
	}
	
	@GetMapping("/delete/{id}")
	public RedirectView delete(@PathVariable int id) {
		es.deleteEmployee(id);
		return new RedirectView("/");

	}

}
