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
</div>
<div id="right">
<fieldset>
<legend>LOGIN</legend>
<form action="login.jsp" method="post">
<center>
<table>
<tr>
<td><input type="email" name="uemail" placeholder="USER EMAIL" required/></td>
<td><input type="password" name="upassword" placeholder="USER PASSWORD" required/></td>
</tr>
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