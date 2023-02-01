<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<table border="1">
<td>
<h1 style="color:blue">New UserRegistration</h1>
<form action ="Register.jsp" method="post">
Name:<input type="text" name="name"><p></p>
Email:<input type="text" name="email"><p></p>
Password :<input type="password" name="psw"><p></p>
Address:<textarea name="adr" row="2" cols="2"></textarea><p></p>
<input type="submit"value="Register">
</form>
</td>
</table>
</center>
</body>
</html>