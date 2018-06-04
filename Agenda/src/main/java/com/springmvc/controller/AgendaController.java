package com.springmvc.controller;

// import Empleados 

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")

	public class AgendaController {

		@RequestMapping(method = RequestMethod.GET)
		public ModelAndView ListaEmpleados() {
			//List<Empleado> listaEmpleados = serviciosBuscarEMpleados();
			ModelAndView model = new ModelAndView("listaEmpleados")
			model.addObject("ListaEmpleados" , new Empleado());
			return model;
		}

	}
