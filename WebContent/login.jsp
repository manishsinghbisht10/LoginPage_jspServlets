<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
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
 background-image: url('https://toppng.com/uploads/preview/grass-silhouette-sky-night-dark-blur-11570332913fs4armezgv.jpg');
 background-color: #F2F2F2;
 height: 100%;
 background-position: center;
 background-repeat: no-repeat;
 background-size: cover;
 
}
.forms{
    margin-top: 12rem;
    margin-left: 25rem;
    margin-right: 30rem;
    line-height: 1.5rem;
    
}
.btn{
  margin-left: 40%;
  margin-top: 10px;
}
form{
  color: grey;
  font-weight: bold;
  font-family: 'Montserrat', sans-serif;
  
}
</style>
</head>
<body>
<div class="forms">
  <h2 style="font-weight:bold; text-align:center; color:grey; font-family: 'Merriweather', serif;">Contact Us</h2>
  <form style="color:grey;" action="loginServlet" method="post">
  Enter email <input style="width:100%;" type="email" name="email"><br>
  Enter password<input style="width:100%;" type="password" name="password"><br>
  <input class="btn btn-dark" type="submit">
  </form>
</div>

</body>
</html>