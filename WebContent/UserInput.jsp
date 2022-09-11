<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.logging.Level" %>
    <%@ page import="java.util.logging.Logger" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.Statement" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	body{
 background-image: url('https://toppng.com/uploads/preview/grass-silhouette-sky-night-dark-blur-11570332913fs4armezgv.jpg');
 background-color: #F2F2F2;
 height: 100%;
 background-position: center;
 background-repeat: no-repeat;
 background-size: cover;
</style>
</head>
<body bgcolor="lightgrey">

	<%
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String message=request.getParameter("message"); 
	    String url="jdbc:postgresql://localhost:5432/ContactUs";
	    String user="postgres";
	    String password="Manish10@";
	    String PSQLquery="insert into userdetails\r\n" + 
        		"(name,email,message) values('"+ name +"','"+ email +"','"+ message +"');";
        		try{
        			    Class.forName("org.postgresql.Driver");
        			    Connection con = DriverManager.getConnection(url,user,password);
        			    Statement statement = con.createStatement();
        			    statement.executeUpdate(PSQLquery);
        			    out.print("data added");
        			    statement.close();
        			    con.close();
        			}catch (Exception e) {
    					out.print("error"+e.getMessage());
    				}
    %>
</body>
</html>