<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%
session=request.getSession();
String email=session.getAttribute("uemail").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/karan","root","");

PreparedStatement stmt=conn.prepareStatement("select * from register where Email=?");

stmt.setString(1,email);
ResultSet rs=stmt.executeQuery();
String name="";

String contact="";
while (rs.next())
{
	name=rs.getString(2);
	contact=rs.getString(3);
}
%>


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

<div id="right">
<ul id="usermenu">

<li><a href="userhome.jsp">Home</a></li>
<li><a href="profile.jsp">Profile</a></li>
<li><a href="addrecord.jsp">Add Record</a></li>
<li><a href="deleterecord.jsp">Delete Record</a></li>
<li><a href="updaterecord.jsp">Update Record</a></li>
<li><a href="searchrecord.jsp">Search Record</a></li>
<li><a href="completerecord.jsp">Complete Record</a></li>
<li><a href="changerecord.jsp">Change Password</a></li>
<li><a href="logout.jsp">Logout</a></li>
</ul>



</div>
<div id="left">

<center><table border=1 >
<tr>
<th>Name</th>
<td><% out.print(name) ;%></td>
</tr>
<tr>
<th>Contact</th>
<td><% out.print(contact) ;%></td>
</tr>

</table>
</center>
<br><br>
<%
Statement stmt1=conn.createStatement();
ResultSet rs1=stmt1.executeQuery("select * from book");
out.print("<center><table border=1 height=200 width=500 bordercolor='red'>");
out.print("<tr><th>Book ID</th><th>Book Name</th><th>Book Writer</th><th>User Name</th></tr>");

while (rs1.next())
{
	out.print("<tr>");
	out.print("<td>"+rs1.getString(2)+"</td><td>"+rs1.getString(3)+"</td><td>"+rs1.getString(4)+"</td><td>"+rs1.getString(5)+"</td>");
	out.print("</tr>");
}



out.print("</table></center>");


%>
</div>
</div>
<div id="footer">Footer</div>
</div>
</body>
</html>