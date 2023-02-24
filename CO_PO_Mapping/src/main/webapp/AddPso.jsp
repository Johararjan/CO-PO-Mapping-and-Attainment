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
<form action="psoaddtodb.jsp">
<table class="container">
<tr>
<th>Pso No</th>
<th>Description</th>
<th>Program Specific Outcomes</th>
</tr>
<tr>
<td>
<input type="text" value="PSO1" name="1" class="form-input">
</td>
<td>
<input type="text" name="d1" class="form-input">
</td>
<td>
<textarea name="t1" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PSO2" name="2" class="form-input">
</td>
<td>
<input type="text" name="d2" class="form-input">
</td>
<td>
<textarea name="t2" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr><tr>
<td>
<input type="text" value="PSO3" name="3" class="form-input">
</td>
<td>
<input type="text" name="d3" class="form-input">
</td>
<td>
<textarea name="t3" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr><td colspan=3><button class="butn button_slide slide_left" type="submit" name="button"style="padding:15px 30px;">Submit</button></td></tr>

</table>

</form>
<jsp:include page="footer.html" /> 
</body>
</html>