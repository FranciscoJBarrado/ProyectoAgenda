package com.springmvc.services;



import java.util.List;

import com.springmvc.model.Empleados;



public interface UserService {
	
	public List<Empleados> list();
	
	public Empleados get(int id);
	
	public void saveOrUpdate(Empleados empleado);
	
	public void delete(int id);
}