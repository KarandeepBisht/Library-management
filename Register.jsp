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
<li> <a href="">register</a></li>
</ul>
<div id="pagelayout">
<form action="userRegister.jsp" method="post">
<center>
<table>
<tr>
<th> Name </th>
<td><input type="text" name="name" placeholder="USER NAME" required/></td>
</tr>
<tr>
<th> Email </th>
<td><input type="text" name="uemail" placeholder="USER EMAIL" required/></td>
</tr>
<tr>
<th> Contact </th>
<td><input type="text" name="contact" placeholder="USER CONTACT" required/></td>
</tr>
<tr>
<th> Password </th>
<td><input type="text" name="password" placeholder="USER PASSWORD" required/></td>
</tr>
<tr>
<th> </th>
<td><input type="SUBMIT" value="Register" /></td>
</tr>
</table>
</center>
</form>
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