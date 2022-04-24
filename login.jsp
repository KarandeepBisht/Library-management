<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
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

<%

String email=request.getParameter("uemail");

String password=request.getParameter("upassword");

Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/karan","root","");

PreparedStatement stmt=conn.prepareStatement("select * from register where Email=? and Password=?");

stmt.setString(1,email);

stmt.setString(2,password);
ResultSet rs=stmt.executeQuery();
int c=0;
while(rs.next())
{
	c++;
}
if (c==1)
{
session=request.getSession();
	session.setAttribute("uemail",email);
	response.sendRedirect("userhome.jsp");
}
else
	out.print("Wrong Email or Password");



%>

</div>
<div id="right">
<fieldset>
<legend>LOGIN</legend>
<form action="login.jsp" method="post">
<center>
<table>
<tr>
<th>Login</th>
<td><input type="email" name="uemail" placeholder="USER EMAIL" required/></td>
</tr>
<tr>
<th> Password</th>
<td><input type="password" name="upassword" placeholder="USER PASSWORD" required/></td>
</tr>
<tr>
<th></th>
<td><input type="SUBMIT" VALUE="LOGIN"/>
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