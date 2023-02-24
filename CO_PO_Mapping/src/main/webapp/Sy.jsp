<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>SY</title>
    <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
</head>
<body>
<jsp:include page="navbar.html" /> 

<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		                	Statement stmt=connection.createStatement(); 
							PreparedStatement stm=connection.prepareStatement("select * from sysem1");
							
							ResultSet rs=stm.executeQuery();
		%>					
<table border="1" class="container">
<tr><td colspan=7>
<H2>Sem - I</H2></td></tr>
<tr>
<th>Course Code</th>
<th>Course Name</th>
<th colspan="5">Action</th>
</tr>
 <% while(rs.next()){ %>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><a href="Co2.jsp"><button name="21" class="butn button_slide slide_left">Add Co</button></a></td>
<td><a href="Comap.jsp"><button class="butn button_slide slide_left">Add Co Po mapping</button></a></td>
<td><a href="javascript:;" onclick = "this.href='CA1.jsp?year='+2"><button class="butn button_slide slide_left">CA1 Analysis</button></a></td>
<td><a href="javascript:;" onclick = "this.href='CA2.jsp?year='+2"><button class="butn button_slide slide_left" type="submit">CA2 Analysis</button></a></td>
<td><a href="javascript:;" onclick = "this.href='Midsem.jsp?year='+2"><button class="butn button_slide slide_left" type="submit">Mid Sem Analysis</button></a></td>
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

<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		                	Statement stmt=connection.createStatement(); 
							PreparedStatement stm=connection.prepareStatement("select * from sysem2");
							
							ResultSet rs=stm.executeQuery();
		%>					
<table border="1" class="container">
<tr><td colspan=7><H2>Sem - II</H2></td></tr>
<tr>
<th>Course Code</th>
<th>Course Name</th>
<th colspan="5">Action</th>
</tr>
 <% while(rs.next()){ %>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><a href="Co2.jsp"><button name="22" class="butn button_slide slide_left">Add Co</button></a></td>
<td><a href="Comap.jsp"><button class="butn button_slide slide_left">Add Co Po mapping</button></a></td>
<td><a href="javascript:;" onclick = "this.href='CA1.jsp?year='+2"><button class="butn button_slide slide_left">CA1 Analysis</button></a></td>
<td><a href="javascript:;" onclick = "this.href='CA2.jsp?year='+2"><button class="butn button_slide slide_left" type="submit">CA2 Analysis</button></a></td>
<td><a href="javascript:;" onclick = "this.href='Midsem.jsp?year='+2"><button class="butn button_slide slide_left" type="submit">Mid Sem Analysis</button></a></td>
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
 <jsp:include page="footer.html" /> 
</body>
</html>