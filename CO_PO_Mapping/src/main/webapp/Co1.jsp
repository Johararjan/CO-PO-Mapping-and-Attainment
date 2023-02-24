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
<%
int pointer=Integer.parseInt(request.getParameter("pointer"));
%>
<jsp:include page="navbar.html" /> 
<div class="container">
<form action="Co.jsp">
<div class="input-box">
<label>Enter number of course outcomes</label><br>
<input type="number" name="num" class="form-input">
<input type="hidden" name="pointer" value="C10<%= pointer%>">
</div>
<button type="submit" class="butn button_slide slide_left">Submit</button>
</form>
</div>
 <jsp:include page="footer.html" /> 
 
</body>
</html>