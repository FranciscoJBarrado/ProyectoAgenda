package utilidades;

import java.sql.*;
import javax.sql.*;


public class Acceso {
	
	public static Statement aMysql(){
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    
    String driverUrl = null;
    String user = null;
    String password = null;
	
    try {
    	String driverClassName = "com.mysql.jdbc.Driver";
 
    	Class.forName(driverClassName);
    	con = DriverManager.getConnection(driverUrl,user,password);
    	
    	
    	st =  con.createStatement();

    	
    	
    } catch (Exception e) {
    	e.toString();
    }
	return st;
}
	
	


public static ResultSet consultMySql(String query) throws SQLException{
	
	Statement st = null;
	ResultSet rs = null;
	try{
	st = aMysql();
	
	rs = st.executeQuery(query);
	}catch (SQLException e){
		e.toString();
	}catch (Exception e){
		e.toString();
	}
	return rs;
}

public static int modifMySql( String query) throws SQLException{
	
	Statement st = null;
	int num = -3;
	try{
	st = aMysql();
	
	num = st.executeUpdate(query);
	}catch (SQLException e){
		e.toString();
	}catch (Exception e){
		e.toString();
	}
	return num;
}
}
