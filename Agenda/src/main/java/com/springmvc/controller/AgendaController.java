package com.springmvc.controller;

import com.springmvc.model.*;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AgendaController {
	
		@RequestMapping("/")
		public ModelAndView ListaEmpleados() {
			List<Empleados> listaEmpleados = serviciosBuscarEmpleados();
			ModelAndView model = new ModelAndView("listaEmpleados");
			model.addObject("ListaEmpleados" , listaEmpleados);
			return model;
		}

}
