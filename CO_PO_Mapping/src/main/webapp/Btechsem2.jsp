<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Sem - II</title>
</head>
<body>
<jsp:include page="navbar.html" /> 
<form action="Btechsem2.jsp">
<table class="container">
<tr>
<th>Course Code</th>
<th>Course Name</th>
</tr>
<tr>
<td><input type="text" name="1" class="form-input"></td>
<td><input type="text" name="t1" class="form-input"></td>
</tr>
<tr><td colspan=2><button class="butn button_slide slide_left" type="submit" name="button"style="padding:15px 30px;">Submit</button></td></tr> 
</table>
</form>
<%
String a[]=new String[1];
String c[]=new String[1];
try {
	Class.forName("com.mysql.jdbc.Driver");
	
}catch (ClassNotFoundException e){
	e.printStackTrace();	
}
Connection con;
try {
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	String sql="insert into btechsem2 values(?,?)";
	PreparedStatement stmt=con.prepareStatement(sql);
	for(int i=0;i<1	;i++)
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