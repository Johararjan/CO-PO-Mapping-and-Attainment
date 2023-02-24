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
<h1>Select the class</h1>
<br><br>
<a href="AddFy.jsp"><button class="butn button_slide slide_left">FY</button></a>
<a href="AddSy.jsp"><button class="butn button_slide slide_left">SY</button></a>
<a href="AddTy.jsp"><button class="butn button_slide slide_left">TY</button></a>
<a href="AddBtech.jsp"><button class="butn button_slide slide_left">BTECH</button></a>
</div>
<jsp:include page="footer.html" /> 
</body>
</html>