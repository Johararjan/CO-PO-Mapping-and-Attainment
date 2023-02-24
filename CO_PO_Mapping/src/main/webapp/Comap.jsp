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
String code='C'+request.getParameter("year")+'0'+request.getParameter("pointer");
%>
<jsp:include page="navbar.html" /> 
<div class="container">
<form action="Findcomap.jsp">
<div class="input-box">
<label>Enter The code of the course outcome</label>
<input type="text" name="code" class="form-input" value=<%=code %>>
<button type="submit" class="butn button_slide slide_left">Submit</button>
</div>																																								
</form>
</div>
 <jsp:include page="footer.html" /> 
</body>
</html>