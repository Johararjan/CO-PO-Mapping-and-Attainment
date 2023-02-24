<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
      
<!DOCTYPE html>
<html>
<head>
<jsp:include page="navbar.html" /> 
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		                	Statement stmt=connection.createStatement(); 
						    String name=request.getParameter("username");
							String pass=request.getParameter("password");
							PreparedStatement stm=connection.prepareStatement("select * from admin where user=? and pass=?");
							stm.setString(1, name);
							stm.setString(2, pass);
							
							ResultSet rs=stm.executeQuery();
							
							if(rs.next())
							{
								session.setAttribute("user",name);
								
						%>
							<div class="container">
						<H1>Welcome Admin</H1>
						<br>
						<a href="AddTeacher.jsp"><div class="butn button_slide slide_left">Add Teacher</div></a>
						<a href="AddSyllabus.html"><div class="butn button_slide slide_left">Add Syllabus Structure</div></a>
						<a href="AddPo.jsp"><div class="butn button_slide slide_left">Add Program Outcomes</div></a>
						<a href="AddPso.jsp"><div class="butn button_slide slide_left">Add Program Specific Outcomes</div></a>
						<a href="AddStud.jsp"><div class="butn button_slide slide_left">Add Students</div></a>
						</div>	
		<%
		}
							else
							{
								%>
								<h1>Invalid Credentials</h1>
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