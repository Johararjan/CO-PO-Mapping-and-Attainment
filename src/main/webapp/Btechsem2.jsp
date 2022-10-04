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
<form action="Btechsem2.jsp">
<table>
<tr>
<th>Course Code</th>
<th>Course Name</th>
</tr>
<tr>
<td><input type="text" name="1"></td>
<td><input type="text" name="t1"></td>
</tr>
</table>
<input type="submit">
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
</body>
</html>