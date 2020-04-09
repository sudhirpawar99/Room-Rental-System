<%@ page import="java.sql.*"%>
<html>
<head>
<title>JDBC Connection example</title>
</head>

<body>
<h1>JDBC Connection example</h1>

<%
String name=request.getParameter("name");
String ap=request.getParameter("ap");
String city=request.getParameter("city");
String locality=request.getParameter("locality");
String room=request.getParameter("room");
String f=request.getParameter("f");
String rent=request.getParameter("price");
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
			 out.println(room);
			 String query = "INSERT INTO ONSEL VALUES(?,?,?,?,?,?,?)";
            
                       PreparedStatement st = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            
                       st.setString(1,name);
					   st.setString(2,ap);
					   st.setString(3,city);
					   st.setString(4,locality);
					   st.setString(5,room);
					   st.setString(6,f);
					   st.setString(7,rent);
					   if (st.executeUpdate() == 1) 							 
			            {
                 
                          response.sendRedirect("thank.html");
						}
					   
         }
         catch(Exception ex)
         {
             out.println(ex);
             
         }
         
%>

</body>
</html>
