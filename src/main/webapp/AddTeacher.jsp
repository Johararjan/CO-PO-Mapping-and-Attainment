<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Register</title>
</head>
<body>
<form action="AddTeacher.jsp">
<h1>Teacher Registration Form</h1>
<br><br>
Username:
<input type="text" name="Username"><br><br>
Password:
<input type="password" name="Password">
<br><br>
<input type="submit" value="submit">
</form>
<%
try {
        	Class.forName("com.mysql.jdbc.Driver");  
			
        	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		    String name=request.getParameter("Username");
			String pass=request.getParameter("Password");
			PreparedStatement stm=connection.prepareStatement("insert into teachers values(? ,?)");
			stm.setString(1, name);
			stm.setString(2, pass);
			
			int i=stm.executeUpdate();
		
			if(i!=0)
			{
				%>
				<script>alert("Teacher Added Successfully")</script>
				<%
			}
			
        }
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
 %>
</body>
</html>