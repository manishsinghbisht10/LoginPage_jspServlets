package com.loginDao;

import java.lang.ProcessBuilder.Redirect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.loginPOJO.PojoGetQueryObject;

public class EditQueryDao {

	public static List<PojoGetQueryObject> returnUserData() {
		String url="jdbc:postgresql://localhost:5432/ContactUs";
        String user="postgres";
        String pass="Manish10@";
        String query="select * from userdetails";
        List<PojoGetQueryObject>objectList=new ArrayList<>();
        try {
			    Class.forName("org.postgresql.Driver");
			    Connection con = DriverManager.getConnection(url,user,pass);
			    Statement statement = con.createStatement();
		        ResultSet dataArray = statement.executeQuery(query);
		        while(dataArray!=null&&dataArray.next()) {
		        	objectList.add(new PojoGetQueryObject(dataArray.getInt("id"), dataArray.getString("name"),dataArray.getString("email"),dataArray.getString("message")));                  
		        }
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		} 
        return objectList;
	}
	
	public static List<PojoGetQueryObject> returnArchiveData() {
		String url="jdbc:postgresql://localhost:5432/LoginPage";
        String user="postgres";
        String pass="Manish10@";
        String query="select * from archive";
        List<PojoGetQueryObject>objectList=new ArrayList<>();
        try {
			    Class.forName("org.postgresql.Driver");
			    Connection con = DriverManager.getConnection(url,user,pass);
			    Statement statement = con.createStatement();
		        ResultSet dataArray = statement.executeQuery(query);
		        while(dataArray!=null&&dataArray.next()) {
		        	objectList.add(new PojoGetQueryObject(dataArray.getInt("id"),  dataArray.getString("full_name"),dataArray.getString("email"),dataArray.getString("message")));                  
		        }
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		} 
        return objectList;
	}
	
	public static void setDataInArchive(int id) {
		String full_name="";
		String email="";
		String message="";
		String url="jdbc:postgresql://localhost:5432/ContactUs";
        String user="postgres";
        String pass="Manish10@";
		List<PojoGetQueryObject>list=returnUserData();
		for(int i=0;i<list.size();i++) {
			if(list.get(i).getId()==id) {
				full_name=list.get(i).getFull_name();
				email=list.get(i).getEmail();
				message=list.get(i).getMessage();
				String query="delete from userdetails where id="+id;
		        try {
					    Class.forName("org.postgresql.Driver");
					    Connection con = DriverManager.getConnection(url,user,pass);
					    Statement statement = con.createStatement();
				        statement.executeQuery(query);
				        statement.close();
				        con.close();
				} catch (ClassNotFoundException | SQLException e) {
				
					e.printStackTrace();
				} 
			}
		}
		String postgreSql = "insert into archive (id,full_name,email,message) values(?,?,?,?);";
        try {
        		url="jdbc:postgresql://localhost:5432/LoginPage";
			    Class.forName("org.postgresql.Driver");
			    Connection con = DriverManager.getConnection(url,user,pass);
			    PreparedStatement statement = con.prepareStatement(postgreSql);
			    statement.setInt(1,id);
			    statement.setString(2,full_name);
			    statement.setString(3,email);
			    statement.setString(4,message);
		        statement.executeUpdate();
		        System.out.print("aaads");
		        statement.close();
		        con.close();
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		} 
	}
}
