<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="index.css">
<script>
function goBack() {
  window.location.href = "http://localhost:8080/project/index.html";
}
</script>
</head>
<header>
<button onclick="goBack()">LOGOUT</button>
</header>

<style>
table{
	 border-collapse: collapse;

}	
 table, th, td {
  border: 1px solid black;
}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 10%;
  opacity: 0.9;
}

</style>
</head>
<header>
<p style="text-align:center;color:yellow;font-size:25px">FOLLOWING ROOM AVIALABLE ON RENT YOU CAN CALL DIERECTLY OWNER</P>
</header>
<body class="b">
<table border="2" width="100%">
<tr>
<td>OWNER 	NAME</td>
<td>APARTMENT</td>
<td>CITY</td>
<td>LOCALITY</td>
<td>SIZE</td>
<td>FURNITURE</td>
<td>RENT</td>
<td>CONTACT WITH OWNER</td>
</tr>
<%

		String city=request.getParameter("city");
		String local=request.getParameter("name");
		String size=request.getParameter("room");
		String rent=request.getParameter("bu");
		String fur=request.getParameter("f");
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
			
		PreparedStatement pst = con.prepareStatement("Select name,ap,city,locality,size,fu,rent from onrent where city=? and locality=? and size=? and fu=? and rent=?;");
        pst.setString(1, city);
        pst.setString(2, local);
		pst.setString(3, size);
        pst.setString(4, fur);
        pst.setString(5, rent);
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
	<td><%=rs.getString(7) %></td>
	<td><a href="https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin">EMAIL TO OWNER</a></td>
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