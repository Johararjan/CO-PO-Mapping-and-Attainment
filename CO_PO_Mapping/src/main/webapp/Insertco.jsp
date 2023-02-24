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
  <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%
String cn[]=new String[50];
String o[]=new String[50];
try {
	Class.forName("com.mysql.jdbc.Driver");
	
}catch (ClassNotFoundException e){
	e.printStackTrace();	
}
Connection con;
try {
	
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	String sql="insert into co values(?,?)";
	PreparedStatement stmt=con.prepareStatement(sql);
	
	for(int i=0;i<Integer.parseInt(request.getParameter("num1"));i++)
	{
		
		cn[i]=request.getParameter(Integer.toString(i+1));
		
		o[i]=request.getParameter("t"+Integer.toString(i+1));
		
		stmt.setString(1,cn[i]);
		stmt.setString(2,o[i]);
		stmt.execute();
	}
	%>
	<div class="container">
	<h1>Co's Inserted Successfully</h1>
</div>
	<%
}catch(SQLException e){
	e.printStackTrace();
	
}
%>
 <jsp:include page="footer.html" /> 
</body>
</html>