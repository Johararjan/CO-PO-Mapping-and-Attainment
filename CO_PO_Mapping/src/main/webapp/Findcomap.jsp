<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
      <%//response.setContentType("application/vnd.ms-excel");
      //response.setHeader("Content-Disposition", "attachment;filename=myExcel.xls");%>
</head>
<body>
<jsp:include page="navbar.html" /> 
<form action="Insertcomap.jsp">
<table BORDER="1" class="container">
<tr>
<th>CO CODES</th>
<th>Course Outcomes</th>
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

String code='C'+request.getParameter("year")+'0'+request.getParameter("pointer");

try {
              	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
		                	Statement stmt=connection.createStatement(); 
							PreparedStatement stm=connection.prepareStatement("select * from co where cno like ?");
							stm.setString(1,code+"%");
							
							ResultSet rs=stm.executeQuery();
							
						
		 int j=0;%>					
 <% while(rs.next()){ %>
<tr>
<td><input type="text" name="t<%=j%>" value="<%= rs.getString(1)%>"></td>
<td><input type="text" value="<%= rs.getString(2)%>"></td>
<% for(int i=1;i<=15;i++){%>
<td><select name="<%=j%><%=i%>">
  <option value="-" >-</option>
  <option value="1" >1</option>
  <option value="2" >2</option>
  <option value="3" >3</option>
</select></td>

<%  } %>
<%j++;} %>
<input type="hidden" name="no" value=<%=j%>>
<input type="hidden" name="code1" value=<%=code %>>
</tr>
<tr><td colspan=17><button class="butn button_slide slide_left" type="submit" name="button"style="padding:15px 30px;">Submit</button></td></tr>

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
 <jsp:include page="footer.html" /> 
</body>
</html>