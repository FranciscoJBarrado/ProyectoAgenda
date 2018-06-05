package com.springmvc.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.model.Empleados;


public class UserDAOImpl {
	/*
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public Empleados listUser (int id) {
		String hql = "from Empleados where id=" + id; //Nos busca en User. Es la entidad (objeto) que ha hecho hibernate y puede buscar en el porque esta mapeado en el ApplicationContextConfig
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Empleados> listUser = (List<Empleados>) query.list();
		
		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		
		return null;
	}*/

}
