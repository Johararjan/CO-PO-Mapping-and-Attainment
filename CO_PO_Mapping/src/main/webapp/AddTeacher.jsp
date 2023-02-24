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
<title>Teacher Register</title>
</head>
<body>

<form action="AddTeacher.jsp">
<div class="container">
<h1>Teacher Registration Form</h1>
<div class="input-box">
        <label>Username</label><br>
        <input type="text" name="Username" class="form-input"><br>
      </div>
    <div class="input-box">
      <label>Password</label><br>
      <input type="password" name="Password" class="form-input"><br>
    </div>
    <button class="butn button_slide slide_left" type="submit" name="button"style="padding:15px 30px;">Login</button>
 
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
 </div>
 </form>
 <jsp:include page="footer.html" /> 
</body>
</html>