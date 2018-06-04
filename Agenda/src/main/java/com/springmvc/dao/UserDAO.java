package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.Empleados;

public interface UserDAO {

	List<Empleados> list();

	Empleados get(int id);

	void saveOrUpdate(Empleados empleado);

	void delete(int id);

}
