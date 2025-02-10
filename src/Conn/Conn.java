package Conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conn {
	
	 public static Connection getConn(){
	    	Connection cn;
	    	String url = "jdbc:mysql://localhost:3306/hms";
	    	String  username = "root";
	    	String pass = "root";
	   
	    
	    	
	    	try 
	    	{
	    		Class.forName("com.mysql.jdbc.Driver");
	    		 cn = DriverManager.getConnection(url,username,pass);
	    		System.out.println("Connection created");
	    		
	    	}
	    	catch(Exception e)
	    	{
	    		e.printStackTrace();
	    		return null;
	    	}
	    	return cn;
		
	 }

}
