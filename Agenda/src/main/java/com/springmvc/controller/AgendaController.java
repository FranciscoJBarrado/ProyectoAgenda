package com.springmvc.controller;

import com.springmvc.model.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

@Controller
public class AgendaController {
	
	@RequestMapping("/")
	public ModelAndView listarEmpleados() throws Exception {
		List<Empleados> listaEmpleados = services.buscarEmpleados();
		ModelAndView model = new ModelAndView("hola");
		model.addObject("listaEmpleados", listaEmpleados);
		return model;
	}

}
