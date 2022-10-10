<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Co.jsp">
Enter number of course outcomes
<input type="number" name="no">
<% String c=request.getParameter("btn");
out.print(c);%>
<input type="submit">
</form>
</body>
</html>