package com.springmvc.model;


// Generated 04-jun-2018 14:51:39 by Hibernate Tools 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Direcciones generated by hbm2java
 */
@Entity
@Table(name = "direcciones", catalog = "agenda")
public class Direcciones implements java.io.Serializable {

	private Integer iddirecciones;
	private Personas personas;
	private String direccion;
	private String codPostal;
	private String localidad;
	private String provincia;

	public Direcciones() {
	}

	public Direcciones(String direccion, String codPostal, String localidad, String provincia) {
		this.direccion = direccion;
		this.codPostal = codPostal;
		this.localidad = localidad;
		this.provincia = provincia;
	}

	public Direcciones(Personas personas, String direccion, String codPostal, String localidad, String provincia) {
		this.personas = personas;
		this.direccion = direccion;
		this.codPostal = codPostal;
		this.localidad = localidad;
		this.provincia = provincia;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "iddirecciones", unique = true, nullable = false)
	public Integer getIddirecciones() {
		return this.iddirecciones;
	}

	public void setIddirecciones(Integer iddirecciones) {
		this.iddirecciones = iddirecciones;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idPersona")
	public Personas getPersonas() {
		return this.personas;
	}

	public void setPersonas(Personas personas) {
		this.personas = personas;
	}

	@Column(name = "direccion", nullable = false, length = 45)
	public String getDireccion() {
		return this.direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	@Column(name = "codPostal", nullable = false, length = 45)
	public String getCodPostal() {
		return this.codPostal;
	}

	public void setCodPostal(String codPostal) {
		this.codPostal = codPostal;
	}

	@Column(name = "localidad", nullable = false, length = 45)
	public String getLocalidad() {
		return this.localidad;
	}

	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}

	@Column(name = "provincia", nullable = false, length = 45)
	public String getProvincia() {
		return this.provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

}
