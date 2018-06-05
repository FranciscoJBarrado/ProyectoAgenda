package com.springmvc.model;
// Generated 05-jun-2018 16:29:52 by Hibernate Tools 5.2.3.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Empleados generated by hbm2java
 */
@Entity
@Table(name = "empleados", catalog = "agenda")
public class Empleados implements java.io.Serializable {

	private Integer idempleados;
	private String codEmpleado;
	private String salario;
	private Date fechaAlta;
	private Integer idDepartamento;
	private Integer idCategoria;

	public Empleados() {
	}

	public Empleados(String codEmpleado) {
		this.codEmpleado = codEmpleado;
	}

	public Empleados(String codEmpleado, String salario, Date fechaAlta, Integer idDepartamento, Integer idCategoria) {
		this.codEmpleado = codEmpleado;
		this.salario = salario;
		this.fechaAlta = fechaAlta;
		this.idDepartamento = idDepartamento;
		this.idCategoria = idCategoria;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idempleados", unique = true, nullable = false)
	public Integer getIdempleados() {
		return this.idempleados;
	}

	public void setIdempleados(Integer idempleados) {
		this.idempleados = idempleados;
	}

	@Column(name = "codEmpleado", nullable = false, length = 45)
	public String getCodEmpleado() {
		return this.codEmpleado;
	}

	public void setCodEmpleado(String codEmpleado) {
		this.codEmpleado = codEmpleado;
	}

	@Column(name = "salario", length = 45)
	public String getSalario() {
		return this.salario;
	}

	public void setSalario(String salario) {
		this.salario = salario;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "fechaAlta", length = 19)
	public Date getFechaAlta() {
		return this.fechaAlta;
	}

	public void setFechaAlta(Date fechaAlta) {
		this.fechaAlta = fechaAlta;
	}

	@Column(name = "idDepartamento")
	public Integer getIdDepartamento() {
		return this.idDepartamento;
	}

	public void setIdDepartamento(Integer idDepartamento) {
		this.idDepartamento = idDepartamento;
	}

	@Column(name = "idCategoria")
	public Integer getIdCategoria() {
		return this.idCategoria;
	}

	public void setIdCategoria(Integer idCategoria) {
		this.idCategoria = idCategoria;
	}

}
