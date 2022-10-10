<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Insertco.jsp">
<table>
<tr>
<th>CO NO</th>
<th>Course Outcomes</th>
</tr>


  <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<% int a=Integer.parseInt(request.getParameter("no"));
String c=request.getParameter("btn");
out.print(c);
for(int i=1;i<=a;i++)
{
	String j=Integer.toString(i);
	
%>
<tr>
<td><input type="number" value="C"  name="<%= j%>"></td>
<td><input type="text" name="text"></td>

</tr>

<%} %>

<td><input type="submit"></td>
</table>
</form>	
</body>
</html>