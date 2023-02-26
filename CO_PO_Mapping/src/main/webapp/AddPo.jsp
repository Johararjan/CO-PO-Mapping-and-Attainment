
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

<form action="poaddtodb.jsp" >
//This is a change in code to display push command
//This is a change in code to display pull command from github
<table  class="container">
<tr>
<th>Sr No</th>
<th>Description</th>
<th>Program Outcomes</th>
</tr>
<tr>
<td>
<input type="text" value="PO1" name="1" class="form-input">
</td>
<td>
<input type="text"  name="d1" class="form-input">
</td>
<td>
<textarea name="t1" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PO2" name="2" class="form-input">
</td>
<td>
<input type="text"  name="d2" class="form-input">
</td>
<td>
<textarea name="t2" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PO3" name="3" class="form-input">
</td>
<td>
<input type="text"  name="d3" class="form-input">
</td>

<td>
<textarea name="t3" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PO4" name="4" class="form-input">
</td>
<td>
<input type="text"  name="d4" class="form-input">
</td>

<td>
<textarea name="t4" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PO5" name="5" class="form-input">
</td>
<td>
<input type="text"  name="d5" class="form-input">
</td>

<td>
<textarea name="t5" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PO6" name="6" class="form-input">
</td>
<td>
<input type="text"  name="d6" class="form-input">
</td>

<td>
<textarea name="t6" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PO7" name="7" class="form-input"> 
</td>
<td>
<input type="text"  name="d7" class="form-input">
</td>

<td>
<textarea name="t7" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PO8" name="8" class="form-input">
</td>
<td>
<input type="text"  name="d8" class="form-input">
</td>

<td>
<textarea name="t8" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PO9" name="9" class="form-input">
</td>
<td>
<input type="text"  name="d9" class="form-input">
</td>

<td>
<textarea name="t9" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PO10" name="10" class="form-input">
</td>
<td>
<input type="text"  name="d10" class="form-input">
</td>

<td>
<textarea name="t10" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>
<input type="text" value="PO11" name="11" class="form-input">
</td>
<td>
<input type="text"  name="d11" class="form-input">
</td>

<td>
<textarea name="t11" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr>
<td>	
<input type="text" value="PO12" name="12" class="form-input">
</td>
<td>
<input type="text"  name="d12" class="form-input">
</td>

<td>
<textarea name="t12" rows="3" cols="100" class="form-input"></textarea>
</td>
</tr>
<tr><td colspan=3><button class="butn button_slide slide_left" type="submit" name="button"style="padding:15px 30px;">Submit</button></td></tr>

</table>

</form>
<jsp:include page="footer.html" /> 
</body>
</html>
