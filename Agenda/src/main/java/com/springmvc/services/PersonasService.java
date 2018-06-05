package com.springmvc.services;

import java.util.List;

import com.springmvc.model.Personas;

public interface PersonasService 
{
public List<Personas> list();
	
	public Personas get(int id);
	
	public void saveOrUpdate(Personas persona);
	
	public void delete(int id);
}
