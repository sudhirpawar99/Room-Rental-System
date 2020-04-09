<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="lawyer.css">
<style>
table{
	 border-collapse: collapse;

}	
 table, th, td {
  border: 1px solid black;
}
</style>
<script>
function goBack() {
  window.history.back();
}
</script>
</head>
<header>
<button onclick="goBack()">Go Back</button>
</header>
<body>
<table border="2" width="100%" bgcolor="#90ee9n0">
<tr class=""a>
<td>LAWYER NAME</td>
<td>MOBILE</td>
<td>EMAIL</td>
<td>CITY</td>
<td>LOACALITY</td>
<td>LAWID</td>
<td>CONTACT</td>
</tr>
<%

		String city=request.getParameter("city");
		String local=request.getParameter("local");
		Connection con=null;
        String driver="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/first";
        String username="root";
        String passworld="";
        
         try
         {
             Class.forName(driver);
             con=DriverManager.getConnection(url,username,passworld);
             if(con!=null)
			 {
			 }
			
		PreparedStatement pst = con.prepareStatement("Select name,mobile,email,city,local,lawid from lawyer where city=? and local=?");
        pst.setString(1, city);
        pst.setString(2, local);
		ResultSet rs = pst.executeQuery();                        
       while(rs.next())
		{
					
			  %>
    <tr>
	<td><%=rs.getString(1)%></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><%=rs.getString(6) %></td>
	<td><a href="https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin">CONTACT</a></td>
	</tr>
        <%

}

      }
	  catch(Exception ex)
         {
             out.println(ex);
             
         }
         
%>
   </table>

</body>
</html>
