package com.springmvc.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.dao.PersonasDAO;
import com.springmvc.model.Personas;

@Service
@Transactional
public class PersonasServiceImpl implements PersonasService {

	@Autowired
	private PersonasDAO personasDAO;

	public PersonasServiceImpl() {
	}

	public PersonasServiceImpl(PersonasDAO personasDAO) {
		super();
		this.personasDAO = personasDAO;
	}

	@Override
	public List<Personas> list() {
		return personasDAO.list();
	}

	@Override
	public Personas get(int id) {
		return personasDAO.get(id);
	}

	@Override
	public void saveOrUpdate(Personas persona) {
		personasDAO.saveOrUpdate(persona);

	}

	@Override
	public void delete(int id) {
		personasDAO.delete(id);

	}

}
