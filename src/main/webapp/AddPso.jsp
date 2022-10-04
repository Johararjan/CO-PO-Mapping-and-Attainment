<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="psoaddtodb.jsp">
<table>
<tr>
<th>Pso No</th>
<th>Description</th>
<th>Program Specific Outcomes</th>
</tr>
<tr>
<td>
<input type="text" value="PSO1" name="1">
</td>
<td>
<input type="text" name="d1">
</td>
<td>
<textarea name="t1" rows="3" cols="100"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PSO2" name="2">
</td>
<td>
<input type="text" name="d2">
</td>
<td>
<textarea name="t2" rows="3" cols="100"></textarea>
</td>
</tr><tr>
<td>
<input type="text" value="PSO3" name="3">
</td>
<td>
<input type="text" name="d3">
</td>
<td>
<textarea name="t3" rows="3" cols="100"></textarea>
</td>
</tr>

</table>
<input type="submit">
</form>
</body>
</html>