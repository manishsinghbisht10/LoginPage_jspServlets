<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<%@ page import="java.util.logging.Level" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="com.loginDao.EditQueryDao" %>
<%@ page import="com.loginPOJO.PojoGetQueryObject" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap" rel="stylesheet">	   	
<style>

body{
  background-color: #F2F2F2;
}


h1{
color:grey;
font-family: 'Merriweather', serif;
}
table{
font-family: 'Montserrat', sans-serif;
}
</style>
</head>
<body>
	<%
		EditQueryDao data=new EditQueryDao();
		List<PojoGetQueryObject> ans=data.returnUserData();
	%>
	<h1 style="text-align:center"; >User Contact Details</h1><br>
      <table class="table table-striped">
      		 <tr>
    	 		<td>
    	 			<strong>Id</strong>
    	 		</td>
    	 		 	
    	 		<td>
    	 			 <strong>Name</strong>
    	 		</td>
    	 		
    	 		<td>
    	 			 <strong>Email</strong>
    	 		</td>
    	 		
    	 		<td>
    	 			 <strong>Message</strong>
    	 		</td>
    	 		<td>
    	 			 <strong>Status</strong>
    	 		</td>
    	 	</tr>
      	 <%
      	 	for(int i=0;i<ans.size();i++){
      	 %>
    	 	<tr> 
    	 		<td>
    	 			<%=ans.get(i).getId()%>
    	 		</td>
    	 		
    	 		<td>
    	 			<%=ans.get(i).getFull_name()%>
    	 		</td>
    	 		
    	 		<td>
    	 			<%=ans.get(i).getEmail()%>
    	 		</td>
    	 		
    	 		<td>
    	 			<%=ans.get(i).getMessage()%>
    	 		</td>
    	 		
    	 		<td>
    	 			  <form action="setArchiveData" method="get">
					        <button class="btn btn-secondary" type="submit" name="name" value="<%=ans.get(i).getId()%>"><strong>Archive</strong></button>
					  </form>
				</td>
    	 	</tr>
      	<%
      		}
      	%>
      </table>
      <hr>
      <%
            	EditQueryDao data2=new EditQueryDao();
                List<PojoGetQueryObject> ans2=data2.returnArchiveData();
            %>
            <h1 style="text-align:center";>Archive</h1><br>
      <table class="table table-striped">
     		 <tr>
    	 		<td>
    	 			<strong>Id</strong>
    	 		</td>
    	 		 	
    	 		<td>
    	 			 <strong>Name</strong>
    	 		</td>
    	 		
    	 		<td>
    	 			 <strong>Email</strong>
    	 		</td>
    	 		
    	 		<td>
    	 			 <strong>Message</strong>
    	 		</td>
    	 	</tr>
      	 <%for(int i=0;i<ans2.size();i++){%>
    	 	<tr>
    	 		<td>
    	 			<%=ans2.get(i).getId()%>
    	 		</td>
    	 		 
    	 		<td>
    	 			<%=ans2.get(i).getFull_name()%>
    	 		</td>
    	 		
    	 		<td>
    	 			<%=ans2.get(i).getEmail()%>
    	 		</td>
    	 		
    	 		<td>
    	 			<%=ans2.get(i).getMessage()%>
    	 		</td>
    	 	</tr>
      	<%} %>
      </table>
	
</body>
</html>