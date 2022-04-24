<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KDSB</title>
<link rel="stylesheet" href="Css/kk.css"/>
</head>
<body>
<div>
<div id="header">Header</div>
<div id="content">
<div id="left">
<ul id="menubar">
<li> <a href="">home</a></li>
<li> <a href="">about</a></li>
<li> <a href="">contact</a></li>
<li> <a href="Register.jsp">register</a></li>
</ul>
<div id="pagecontact">
<%
String name=request.getParameter("name");
String email=request.getParameter("uemail");
String contact=request.getParameter("contact");
String password=request.getParameter("password");
out.print(name+""+email+""+contact+""+password);
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/karan","root","");

PreparedStatement stmt=conn.prepareStatement("insert into register values(?,?,?,?,?)");
stmt.setInt(1,0);
stmt.setString(2,name);
stmt.setString(3,email);
stmt.setString(4,contact);
stmt.setString(5,password);
int x=stmt.executeUpdate();
if (x==1)
	out.println("Value Inserted");
%>

</div>
</div>
<div id="right">
<fieldset>
<legend>LOGIN</legend>
<form action="login.jsp">
<center>
<table>
<tr>
<td><input type="email" name="uemail" placeholder="USER EMAIL" required/></td>
<td><input type="password" name="upassword" placeholder="USER PASSWORD" required/></td>
</tr>
</table>
</center>
</form>
</feildset>
</div>
</div>
<div id="footer">footer</div>
</div>
</html>