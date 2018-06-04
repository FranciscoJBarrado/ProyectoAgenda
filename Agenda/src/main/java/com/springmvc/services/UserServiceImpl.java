package com.springmvc.services;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.dao.UserDAO;
import com.springmvc.model.Empleados;



@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	/*
	public UserServiceImpl(){
		
	}
	
	public UserServiceImpl(UserDAO userDAO) {
		super();
		this.userDAO = userDAO;
	}
	*/


	@Override
	public List<Empleados> list() {

		return userDAO.list();
	}

	@Override
	public Empleados get(int id) {
		return userDAO.get(id);
	}

	@Override
	public void saveOrUpdate(Empleados empleado) {
		userDAO.saveOrUpdate(empleado);

	}

	@Override
	public void delete(int id) {
		userDAO.delete(id);

	}

}
