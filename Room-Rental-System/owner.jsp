<%@ page import="java.sql.*"%>
<html>
<head>
<title>JDBC Connection example</title>
</head>

<body>
<h1>JDBC Connection example</h1>

<%
String name=request.getParameter("name");
String mob=request.getParameter("mno");
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
			 
			 String query = "INSERT INTO OWNER VALUES(?,?,?,?)";
            
                       PreparedStatement st = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            
                       st.setString(1,name);
					   st.setString(2,mob);
					   st.setString(3,email);
					   st.setString(4,pass);
					   if (st.executeUpdate() == 1) 							 
			            {
						response.sendRedirect("ownerlogin.html");
                           
						}
					   
					   
         }
         catch(Exception ex)
         {
             out.println(ex);
             
         }
         
%>

</body>
</html>
