<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
body{
 background-image: url('WebContent/img16.webp');
 background-color: #F2F2F2;
}
.forms{
    margin-top: 12rem;
    margin-left: 25rem;
    margin-right: 30rem;
    line-height: 1.3rem;
}
.btn{
  margin-left: 40%;
  margin-top: 10px;
}
form{
  color: grey;
  font-weight: bold;
}
</style>
</head>
<body>
<div class="forms">
  <h2 style="text-align:center; color:grey;">Contact Us</h2>
  <form style="color:grey;" action="loginServlet" method="post">
  ENTER EMAIL <input style="width:100%;" type="email" name="email"><br>
  ENTER PASSWORD<input style="width:100%;" type="password" name="password"><br>
  <input class="btn btn-dark" type="submit">
  </form>
</div>

</body>
</html>