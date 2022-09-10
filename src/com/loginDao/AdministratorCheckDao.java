package com.loginDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdministratorCheckDao {
    String query="select* from logindetails where email=? and password=?";
    
	public boolean checkAdmin(String email, String password) {
		String url="jdbc:postgresql://localhost:5432/LoginPage";
        String user="postgres";
        String pass="Manish10@";

        try {
			    Class.forName("org.postgresql.Driver");
			    Connection con = DriverManager.getConnection(url,user,pass);
			    PreparedStatement statement=con.prepareStatement(query);
		        statement.setString(1,email);
		        statement.setString(2,password);
		        ResultSet dataArray = statement.executeQuery(); 
		        if(dataArray.next())return true;
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		} return false;
	}
}
