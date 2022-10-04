<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sem - II</title>
</head>
<body>
<form action="Tysem2.jsp">
<table>
<tr>
<th>Course Code</th>
<th>Course Name</th>
</tr>
<tr>
<td><input type="text" name="1"></td>
<td><input type="text" name="t1"></td>
</tr>
<tr>
<td><input type="text" name="2"></td>
<td><input type="text" name="t2"></td>
</tr>
<tr>
<td><input type="text" name="3"></td>
<td><input type="text" name="t3"></td>
</tr>
<tr>
<td><input type="text" name="4"></td>
<td><input type="text" name="t4"></td>
</tr>
<tr>
<td><input type="text" name="5"></td>
<td><input type="text" name="t5"></td>
</tr>
<tr>
<td><input type="text" name="6"></td>
<td><input type="text" name="t6"></td>
</tr>
<tr>
<td><input type="text" name="7"></td>
<td><input type="text" name="t7"></td>
</tr>
<tr>
<td><input type="text" name="8"></td>
<td><input type="text" name="t8"></td>
</tr>
<tr>
<td><input type="text" name="9"></td>
<td><input type="text" name="t9"></td>
</tr>
<tr>
<td><input type="text" name="10"></td>
<td><input type="text" name="t10"></td>
</tr>
<tr>
<td><input type="text" name="11"></td>
<td><input type="text" name="t11"></td>
</tr>
<tr>
<td><input type="text" name="12"></td>
<td><input type="text" name="t12"></td>
</tr>
</table>
<input type="submit">
</form>
<%
String a[]=new String[12];
String c[]=new String[12];
try {
	Class.forName("com.mysql.jdbc.Driver");
	
}catch (ClassNotFoundException e){
	e.printStackTrace();	
}
Connection con;
try {
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	String sql="insert into tysem2 values(?,?)";
	PreparedStatement stmt=con.prepareStatement(sql);
	for(int i=0;i<12;i++)
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
</body>
</html>