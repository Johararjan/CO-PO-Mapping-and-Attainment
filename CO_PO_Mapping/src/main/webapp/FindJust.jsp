<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<input type="submit">
<table BORDER="1">
<tr>
<th>CO CODES</th>
<th>Course Outcomes</th>
<tr>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%

String a=request.getParameter("code");
try {
              	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		                	Statement stmt=connection.createStatement(); 
							PreparedStatement stm=connection.prepareStatement("select * from co where cno like ?");
							stm.setString(1,a+"%");
							PreparedStatement stm1=connection.prepareStatement("select * from comap where cno like ?");
							stm1.setString(1,a+"%");
							ResultSet rs=stm.executeQuery();
							ResultSet rs1=stm1.executeQuery();
						
		 int j=0;%>					
 <% while(rs.next()){ %>
<tr>
<td><input type="text" name="t<%=j%>" value="<%= rs.getString(1)%>"></td>
<td><input type="text" value="<%= rs.getString(2)%>"></td>
<% while(rs1.next()){ %>
<td><input type="text" value="<%=rs1.getString(1)%>"></td>



<%
}%>
	
<%j++;} %>

</tr>

</table>
<input type="hidden" name="no" value=<%=j%>>
<input type="hidden" name="code1" value=<%=a %>>
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