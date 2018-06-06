package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.Personas;

public interface PersonasDAO {

	List<Personas> list();

	Personas get(int id);

	void saveOrUpdate(Personas personas);

	void delete(int id);

}
