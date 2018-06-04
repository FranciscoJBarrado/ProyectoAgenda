package primero;
// Generated 04-jun-2018 14:51:39 by Hibernate Tools 5.2.3.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
	private Categorias categorias;
	private Departamentos departamentos;
	private String codEmpleado;
	private String salario;
	private Date fechaAlta;
	private Set<Personas> personases = new HashSet<Personas>(0);

	public Empleados() {
	}

	public Empleados(String codEmpleado) {
		this.codEmpleado = codEmpleado;
	}

	public Empleados(Categorias categorias, Departamentos departamentos, String codEmpleado, String salario,
			Date fechaAlta, Set<Personas> personases) {
		this.categorias = categorias;
		this.departamentos = departamentos;
		this.codEmpleado = codEmpleado;
		this.salario = salario;
		this.fechaAlta = fechaAlta;
		this.personases = personases;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idCategoria")
	public Categorias getCategorias() {
		return this.categorias;
	}

	public void setCategorias(Categorias categorias) {
		this.categorias = categorias;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idDepartamento")
	public Departamentos getDepartamentos() {
		return this.departamentos;
	}

	public void setDepartamentos(Departamentos departamentos) {
		this.departamentos = departamentos;
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

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleados")
	public Set<Personas> getPersonases() {
		return this.personases;
	}

	public void setPersonases(Set<Personas> personases) {
		this.personases = personases;
	}

}
