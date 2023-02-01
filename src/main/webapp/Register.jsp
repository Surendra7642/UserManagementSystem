<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
try
{
	String name=request.getParameter("name");
	String psw=request.getParameter("psw");
	String email=request.getParameter("email");
	String adr=request.getParameter("adr");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","emp","emp");
	PreparedStatement ps=con.prepareStatement("insert into userreg values(?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, psw);
    ps.setString(3, email);
	ps.setString(4,adr);
	int i=ps.executeUpdate();
	out.print(i+"New User Registered Successfully.....");
	con.close();
}
catch (Exception e)
{
	out.print(e);
}
%>
</body>
</html>