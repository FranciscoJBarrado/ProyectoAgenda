package com.springmvc.test;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.ClassRule;
import org.junit.Rule;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.rules.SpringClassRule;
import org.springframework.test.context.junit4.rules.SpringMethodRule;
import org.springframework.test.web.servlet.MockMvc;

import com.springmvc.config.ApplicationContextConfig;
import com.springmvc.controller.HomeController;
import com.springmvc.dao.PersonasDAO;
import com.springmvc.dao.PersonasDAOImpl;

@ContextConfiguration(classes = { ApplicationContextConfig.class })
public class TestPrueba1 {
	@ClassRule
	public static final SpringClassRule SPRING_CLASS_RULE = new SpringClassRule();
	@Rule
	public final SpringMethodRule springMethodRule = new SpringMethodRule();

	@Autowired
	private PersonasDAO personasDAO;
	@Autowired
	private HomeController controller;

	/*
	 * @Autowired private MockMvc mockMvc;
	 */
	@Test
	public void testPrueba() {
		assertEquals(2, personasDAO.sumados());
	}

	@Test
	public void testPruebaDos() {
		assertNull(personasDAO.get(4));

	}

	@Test
	public void testPruebaTres() throws Exception {
		assertNotNull(controller);
	}

	@Test
	public void testPruebaCuatro() {
		assertEquals(personasDAO.get(1).getIdpersonas(), personasDAO.get(1).getEmpleados().getIdempleados());
	}
	/*
	 * @Test public void testMocazo() throws Exception {
	 * this.mockMvc.perform(get("/")).andDo(print()).andExpect(status().isOk());
	 * 
	 * }
	 */
}
