<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Home</title>
</head>
<body>
<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		                	Statement stmt=connection.createStatement(); 
						    String name=request.getParameter("username");
							String pass=request.getParameter("password");
							PreparedStatement stm=connection.prepareStatement("select * from teachers where username=? and password=?");
							stm.setString(1, name);
							stm.setString(2, pass);
							
							ResultSet rs=stm.executeQuery();
							
							if(rs.next())
							{
						%>
								
						<H1>Welcome Teacher</H1>
						<br>
						<a href="Add Course Outcomes.jsp"><button>Add CO'S</button></a>
		<%
		}
							else
							{
								%>
								<script>alert("Invalid Credentials")</script>
								<%
							}
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%>
</body>
</html>