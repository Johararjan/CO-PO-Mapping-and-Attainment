<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
      <%response.setContentType("application/vnd.ms-excel");
      response.setHeader("Content-Disposition", "attachment;filename=CO_PO_Mapping.xls");%>
</head>
<body>
<table BORDER="1">
<tr>
<th>CO CODES</th>
<th>PO1</th>
<th>PO2</th>
<th>PO3</th>
<th>PO4</th>
<th>PO5</th>
<th>PO6</th>
<th>PO7</th>
<th>PO8</th>
<th>PO9</th>
<th>PO10</th>
<th>PO11</th>
<th>PO12</th>
<th>PSO1</th>
<th>PSO2</th>
<th>PSO3</th>
<tr>
<%
String a=request.getParameter("code");
try {
              	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		                	Statement stmt=connection.createStatement(); 
							PreparedStatement stm=connection.prepareStatement("select * from comap where cno like ?");
							stm.setString(1,a+"%");
							
							ResultSet rs=stm.executeQuery();
							
						
		 int j=0;%>					
 <% while(rs.next()){ %>
<tr>
<td><%= rs.getString(1)%></td>
<% for(int i=2;i<=16;i++){%>
<td><%= rs.getString(i)%></td>
<%  } %>
<%j++;} %>
</tr>

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