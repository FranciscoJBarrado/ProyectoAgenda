package com.springmvc.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.Empleados;
import com.springmvc.services.UserService;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	/*@Autowired
	private UserService userService;
*/
	@RequestMapping("/")
	public ModelAndView handleRequest()throws Exception {
		
		
		/*DE MOMENTO NO SE PUEDE HACER
		 * 
		 * List<Empleados> listEmpleados = userService.list();
		ModelAndView model = new ModelAndView("UserList");
		model.addObject("userList", listEmpleados);*/
		ModelAndView model = new ModelAndView("index");
		model.addObject("hola","Q pasa tio");		
		return model;
	}
	/*
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public ModelAndView newUser() {
		ModelAndView model = new ModelAndView("UserForm");
		model.addObject("user", new Empleados());
		return model;		
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView editUser(HttpServletRequest request) {
		int userId = Integer.parseInt(request.getParameter("id"));
		Empleados empleado = userService.get(userId);
		ModelAndView model = new ModelAndView("UserForm");
		model.addObject("user", empleado);
		return model;		
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpServletRequest request) {
		int userId = Integer.parseInt(request.getParameter("id"));
		userService.delete(userId);
		return new ModelAndView("redirect:/");		
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute Empleados empleado) {
		userService.saveOrUpdate(empleado);
		return new ModelAndView("redirect:/");
	}
	*/
}
