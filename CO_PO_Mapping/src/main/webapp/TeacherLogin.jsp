<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Teacher Home</title>
</head>
<body>
<jsp:include page="navbar.html" /> 
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
								session.setAttribute("user",name);
						%>
						<div class="container">
						<H1>Welcome Teacher</H1>
						<br>
						<p>Select the class:</p>
						<a href="Fy.jsp"><div class="butn button_slide slide_left">FY</div></a>
						<a href="Sy.jsp"><div class="butn button_slide slide_left">SY</div></a>
						<a href="Ty.jsp"><div class="butn button_slide slide_left">TY</div></a>
						<a href="Btech.jsp"><div class="butn button_slide slide_left">BTECH</div></a>
						</div>
		<%
		}
							else
							{
								%>
								
								<script>alert("Invalid Credentials")</script>
								<div class="container">
								<h2>Kindly Register first from Admin</h2>
								</div>
								<%
							}
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%>
 <jsp:include page="footer.html" /> 
</body>
</html>