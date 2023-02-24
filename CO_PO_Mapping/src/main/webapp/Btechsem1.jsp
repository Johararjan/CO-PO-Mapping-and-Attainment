<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>SEM - I</title>
</head>
<body>
<jsp:include page="navbar.html" /> 
<form action="Btechsem1.jsp">
<table class="container">
<tr>
<th>Course Code</th>
<th>Course Name</th>
</tr>
<tr>
<td><input type="text" name="1" class="form-input"></td>
<td><input type="text" name="t1" class="form-input"></td>
</tr>
<tr>
<td><input type="text" name="2" class="form-input"></td>
<td><input type="text" name="t2" class="form-input"></td>
</tr>
<tr>
<td><input type="text" name="3" class="form-input"></td>
<td><input type="text" name="t3" class="form-input"></td>
</tr>
<tr>
<td><input type="text" name="4" class="form-input"></td>
<td><input type="text" name="t4" class="form-input"></td>
</tr>
<tr>
<td><input type="text" name="5" class="form-input"></td>
<td><input type="text" name="t5" class="form-input"></td>
</tr>
<tr>
<td><input type="text" name="6" class="form-input"></td>
<td><input type="text" name="t6" class="form-input"></td>
</tr>
<tr>
<td><input type="text" name="7" class="form-input"></td>
<td><input type="text" name="t7" class="form-input"></td>
</tr>
<tr>
<td><input type="text" name="8" class="form-input"></td>
<td><input type="text" name="t8" class="form-input"></td>
</tr>
<tr>
<td><input type="text" name="9" class="form-input"></td>
<td><input type="text" name="t9" class="form-input"></td>
</tr>
<tr>
<td><input type="text" name="10" class="form-input"></td>
<td><input type="text" name="t10" class="form-input"></td>
</tr>
<tr><td colspan=2><button class="butn button_slide slide_left" type="submit" name="button"style="padding:15px 30px;">Submit</button></td></tr>
</table>
</form>
<%
String a[]=new String[10];
String c[]=new String[10];
try {
	Class.forName("com.mysql.jdbc.Driver");
	
}catch (ClassNotFoundException e){
	e.printStackTrace();	
}
Connection con;
try {
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	String sql="insert into btechsem1 values(?,?)";
	PreparedStatement stmt=con.prepareStatement(sql);
	for(int i=0;i<10;i++)
	{
		a[i]=request.getParameter(Integer.toString(i+1));
		c[i]=request.getParameter("t"+Integer.toString(i+1));
		stmt.setString(1,a[i]);
		stmt.setString(2,c[i]);
		stmt.execute();
	}
	%>
	<h1>Subjects Inserted Successfully</h1>
	<%
}catch(SQLException e){
	e.printStackTrace();
	
}
%>
 <jsp:include page="footer.html" /> 
</body>
</html>