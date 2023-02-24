<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ page import="java.sql.*"%>
</head>
<body>
<jsp:include page="navbar.html" /> 
<%
String a[]=new String[12];
String b[]=new String[12];
String c[]=new String[12];
try {
	Class.forName("com.mysql.jdbc.Driver");
	
}catch (ClassNotFoundException e){
	e.printStackTrace();	
}
Connection con;
try {
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	String sql="insert into po values(?,?,?)";
	PreparedStatement stmt=con.prepareStatement(sql);
	for(int i=0;i<12;i++)
	{
		a[i]=request.getParameter(Integer.toString(i+1));
		b[i]=request.getParameter("d"+Integer.toString(i+1));
		c[i]=request.getParameter("t"+Integer.toString(i+1));
		stmt.setString(1,a[i]);
		stmt.setString(2,b[i]);
		stmt.setString(3,c[i]);
		stmt.execute();
	}
	%>
	<div class="container">
	<h1>Po's Inserted Successfully</h1>
	</div>
	<%
}catch(SQLException e){
	e.printStackTrace();
	
}
%>
 <jsp:include page="footer.html" /> 
</body>
</html>