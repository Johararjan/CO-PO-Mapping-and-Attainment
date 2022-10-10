<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
<head>
<meta charset="ISO-8859-1">
<title>Btech</title>
</head>
<body>
<h2>Sem - I</h2>
<form action="Co1.jsp">
<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		                	Statement stmt=connection.createStatement(); 
							PreparedStatement stm=connection.prepareStatement("select * from btechsem1");
							
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
<td><input type="submit" value="Add Co" ><input type="hidden" name="btn" value="41"></td>
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
<br>
<H2>Sem - II</H2>
<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		                	Statement stmt=connection.createStatement(); 
							PreparedStatement stm=connection.prepareStatement("select * from btechsem2");
							
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
<td><input type="submit" value="Add Co" ><input type="hidden" name="btn" value="42"></td>
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
</form>
</body>
</html>