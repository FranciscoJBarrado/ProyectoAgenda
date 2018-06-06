package com.springmvc.test;

import static org.junit.Assert.*;

import org.junit.ClassRule;
import org.junit.Rule;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.rules.SpringClassRule;
import org.springframework.test.context.junit4.rules.SpringMethodRule;

import com.springmvc.config.ApplicationContextConfig;
import com.springmvc.dao.PersonasDAO;
import com.springmvc.dao.PersonasDAOImpl;

@ContextConfiguration(classes = {ApplicationContextConfig.class})
public class TestPrueba1 
{
	@ClassRule 
	public static final SpringClassRule SPRING_CLASS_RULE = new SpringClassRule();	
	@Rule
    public final SpringMethodRule springMethodRule = new SpringMethodRule();
	
	@Autowired
	private PersonasDAO personasDAO;
	
	@Test
	public void testPrueba(){		
		assertEquals(2,personasDAO.sumados());		
	}
	@Test
	public void testPruebaDos()
	{
		assertNull(personasDAO.get(4));
	}
}
