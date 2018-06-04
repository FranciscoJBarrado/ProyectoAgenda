package com.springmvc.config;

<<<<<<< HEAD
import com.springmvc.model.Empleados;

import java.util.Properties;
import javax.sql.DataSource;
=======
import java.util.Properties;

import javax.sql.DataSource;

>>>>>>> master
import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

<<<<<<< HEAD
=======
import com.springmvc.model.Empleados;
>>>>>>> master


@Configuration
@ComponentScan("com.springmvc")
@EnableTransactionManagement
public class ApplicationContextConfig {
<<<<<<< HEAD
	
	@Bean(name="viewResolver")
	public InternalResourceViewResolver getViewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
	    registry.addResourceHandler("/static/**").addResourceLocations("/static/");
	}
	
	@Bean(name = "dataSource")
    public DataSource getDataSource() {
    	BasicDataSource dataSource = new BasicDataSource();
    	dataSource.setDriverClassName("com.mysql.jdbc.Driver");
    	dataSource.setUrl("jdbc:mysql://localhost:3306/usersdb");
    	dataSource.setUsername("root");
    	dataSource.setPassword("1234");
    	
    	return dataSource;
    }
	
	private Properties getHibernateProperties() {
=======
    @Bean(name = "viewResolver")
    public InternalResourceViewResolver getViewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }
    

	public void addResourceHandlers(ResourceHandlerRegistry registry) {
	    registry.addResourceHandler("/static/**").addResourceLocations("/static/");
		///registry.addResourceHandler("/css/**").addResourceLocations("/static/css/");	    
	}
     
    
    @Bean(name = "dataSource")
    public DataSource getDataSource() {
    	BasicDataSource dataSource = new BasicDataSource();
    	dataSource.setDriverClassName("com.mysql.jdbc.Driver");
    	dataSource.setUrl("jdbc:mysql://10.90.36.16/agenda");
    	dataSource.setUsername("admin");
    	dataSource.setPassword("1111");
    	
    	return dataSource;
    }
    
    
    private Properties getHibernateProperties() {
>>>>>>> master
    	Properties properties = new Properties();
    	properties.put("hibernate.show_sql", "true");
    	properties.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
    	return properties;
    }
    
<<<<<<< HEAD
=======
    //copiar para el acceso a datos
>>>>>>> master
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
    	sessionBuilder.addAnnotatedClasses(Empleados.class);
    	return sessionBuilder.buildSessionFactory();
    }
    
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);

		return transactionManager;
	}
<<<<<<< HEAD

=======
>>>>>>> master
}
