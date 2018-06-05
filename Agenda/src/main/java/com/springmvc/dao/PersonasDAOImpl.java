package com.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.model.Personas;


@Repository
public class PersonasDAOImpl implements PersonasDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	@Transactional //Transaccion, o muestra todo o ninguno
	public List<Personas> list() {
		@SuppressWarnings("unchecked")
		List<Personas> listPersonas = (List<Personas>) sessionFactory.getCurrentSession()
				.createCriteria(Personas.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listPersonas;
	}
	
	@Override
	@Transactional
	public Personas get(int id) {
		String hql = "from Personas where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Personas> listPersonas = (List<Personas>) query.list();
		
		if (listPersonas != null && !listPersonas.isEmpty()) {
			return listPersonas.get(0);
		}
		
		return null;
	}


	@Override
	public void saveOrUpdate(Personas personas) {
		sessionFactory.getCurrentSession().saveOrUpdate(personas);
		
	}

	@Override
	public void delete(int id) {
		Personas personaToDelete = new Personas();
		personaToDelete.setIdpersonas(id);
		sessionFactory.getCurrentSession().delete(personaToDelete);
		
	}
	
}
