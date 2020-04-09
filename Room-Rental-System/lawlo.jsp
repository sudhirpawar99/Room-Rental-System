<%@ page import="java.sql.*"%>
<html>
<head>
<title>JDBC Connection example</title>
</head>

<body>
<h1>JDBC Connection example</h1>

<%
String email=request.getParameter("email");
String pass=request.getParameter("psw");
Connection con;
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
				 out.println("Connection Successful");
			 }
			
		PreparedStatement pst = con.prepareStatement("Select name from lawyer where email=? and password=?");
        pst.setString(1, email);
        pst.setString(2, pass);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
		{
			response.sendRedirect("lawyer.html");
		}        
        else
		{out.println("Invalid login credentials");  			
         
		 }
		 }
         catch(Exception ex)
         {
             out.println(ex);
             
         }
         
%>

</body>
</html>
