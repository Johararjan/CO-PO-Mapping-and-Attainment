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
<div class="container">
<%
int pointer=Integer.parseInt(request.getParameter("pointer"));
%>
<form action="Co.jsp">
<div class="input-box">
<label>Enter number of course outcomes</label><br>
<input type="number" name="num" class="form-input">
<input type="hidden" name="pointer" value="C40<%= pointer%>"></div>
<input type="submit">
</form>
</div>
 <jsp:include page="footer.html" /> 
</body>
</html>