package com.gofounder.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping(value = "/json")
public class JsonRequestController {

	@RequestMapping(value = "/postEmployee", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody ModelAndView postEmployeeData(@RequestParam("name") String name, @RequestParam("lastname") String lastname) {
		
		System.out.println("postEmployee.....");
		System.out.println("name....."+name);
		System.out.println("lastname....."+lastname);

		//double newSalary = employee.getSalary() + 1000;
		//employee.setSalary(newSalary);
		ModelAndView mav = new ModelAndView("test");
		System.out.println("rreturning tumi acho.....");
		return mav;
	}
	
	@RequestMapping(value = "/addEmployee")
	public String showEmployeePage(){
		return "addEmployee";
	}
	
	@RequestMapping(value = "/test")
	public String showtest(){
		return "test";
	}
			
}
