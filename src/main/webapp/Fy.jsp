<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FY</title>
</head>
<body>
<h2>Sem - I</h2>
<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		                	Statement stmt=connection.createStatement(); 
							PreparedStatement stm=connection.prepareStatement("select * from fysem1");
							
							ResultSet rs=stm.executeQuery();
		%>					
<table border="1">
<tr>
<th>Course Code</th>
<th>Course Name</th>
<th colspan="2">Action</th>
</tr>
 <% while(rs.next()){ %>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><a href="Co.html"><button name="11">Add Co</button></a></td>
<td><a href=""><button>Add Co Po mapping</button></a></td>
</tr>
 <% } %>
</table>
<%
					
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%>
<H2>Sem - II</H2>
<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		                	Statement stmt=connection.createStatement(); 
							PreparedStatement stm=connection.prepareStatement("select * from fysem2");
							
							ResultSet rs=stm.executeQuery();
		%>					
<table border="1">
<tr>
<th>Course Code</th>
<th>Course Name</th>
<th colspan="2">Action</th>
</tr>
 <% while(rs.next()){ %>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><a href="Co.html"><button name="12">Add Co</button></a></td>
<td><a href=""><button>Add Co Po mapping</button></a></td>
</tr>
 <% } %>
</table>
<%
					
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%>
</body>
</html>