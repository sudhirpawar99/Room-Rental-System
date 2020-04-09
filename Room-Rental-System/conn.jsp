<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page import="java.sql.DriverManager" %> 
<html> 
<head> 
<title>Connection with mysql database</title> 
</head> 
<body>
<h1>Connection status </h1>
<% 
try
{
String URL = "jdbc:mysql://localhost:3306/first"; 
Connection connection = null; 
String driver="com.mysql.jdbc.Driver";
String user="root";
String pass="";
Class.forName(driver); 
connection = DriverManager.getConnection(URL,user,pass);
if(connection!=null)
{
out.println("fdjjgnjgdf");	
}
else
{
	out.println("failure");
}
}
catch(SQLException e)
{
out.println(e);	
}
%>
</body> 
</html>
