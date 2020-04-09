<%@ page import="java.sql.*"%>
<html>
<head>
<title>JDBC Connection example</title>
</head>

<body>
<h1>JDBC Connection example</h1>

<%
String name=request.getParameter("name");
String mno=request.getParameter("mno");
String email=request.getParameter("email");
String city=request.getParameter("city");
String locality=request.getParameter("locality");
String lid=request.getParameter("lid");
String psw=request.getParameter("psw");
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
			 String query = "INSERT INTO LAWYER VALUES(?,?,?,?,?,?,?)";
            
                       PreparedStatement st = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            
                       st.setString(1,name);
					   st.setString(2,mno);
					   st.setString(3,email);
					   st.setString(4,city);
					   st.setString(5,locality);
					   st.setString(6,lid);
					   st.setString(7,psw);
					   if (st.executeUpdate() == 1) 							 
			            {
                 
                           out.println("Data Inserted");
                           //out.println("Data Inserted");
						}
					   
         }
         catch(Exception ex)
         {
             out.println(ex);
             
         }
         
%>

</body>
</html>
