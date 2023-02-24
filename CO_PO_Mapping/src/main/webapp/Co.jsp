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
<jsp:include page="navbar.html" /> 

<form action="Insertco.jsp" >
<table class="container">
<tr>
<th>CO NO</th>
<th>Course Outcomes</th>
</tr>


  <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<% int a=Integer.parseInt(request.getParameter("num"));
String c=request.getParameter("pointer");
for(int i=1;i<=a;i++)
{
	String j=Integer.toString(i);
	
%>

<tr>
<td><input type="hidden" name="num1" value="<%=a %>"><input type="text" value="<%=c%>.<%=j%>"  name="<%=j%>"></td>
<td><textarea  rows="3" cols="100" name="t<%=j%>"></textarea></td>

</tr>

<%} %>

<td><input type="submit"></td>
</table>
</form>	
 <jsp:include page="footer.html" /> 
</body>


</html>