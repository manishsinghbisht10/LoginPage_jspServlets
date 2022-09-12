package com.contactUsDao;

import com.contactUsPOJO.GetInputPOJO;
import com.sun.jdi.connect.spi.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;

public class TakeInputDao {
	
	 public static void sendInput(GetInputPOJO inputObject)  {
		 String name=inputObject.getName();
		 String email=inputObject.getEmail();
		 String message=inputObject.getMessage();
		 String url="jdbc:postgresql://localhost:5432/ContactUs";
		 String user="postgres";
		 String password="Manish10@";
		 String PSQLquery="insert into userdetails\r\n" + 
        "(name,email,message) values('"+ name +"','"+ email +"','"+ message +"');";
		try{
			    Class.forName("org.postgresql.Driver");
			    java.sql.Connection con = DriverManager.getConnection(url,user,password);
			    Statement statement = con.createStatement();
			    statement.executeUpdate(PSQLquery);
			    statement.close();
			    con.close();
			}catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
	}

}
