<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
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
<form action="Printcomap.jsp">
<% 
String a=request.getParameter("code1");
try {
	Class.forName("com.mysql.jdbc.Driver");
	
}catch (ClassNotFoundException e){
	e.printStackTrace();	
}
Connection con;
try {
	
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	String sql="insert into comap values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement stmt=con.prepareStatement(sql);
	int j=Integer.parseInt(request.getParameter("no"));
	//String a[]=new String[50];
	//String b[]=new String[50];
	for(int k=0;k<j;k++)
	{
		stmt.setString(1,request.getParameter("t"+Integer.toString(k)));
		for(int i=1;i<=15;i++)
		{
			
			stmt.setString(i+1,request.getParameter(Integer.toString(k)+Integer.toString(i)));
			
		}	
		stmt.execute();
	} %>
	
	<h1>Data Inserted Successfully</h1>
	<input type="hidden" value=<%=a %> name="code">
	<tr><td colspan=2><button class="butn button_slide slide_left" type="submit" name="button"style="padding:15px 30px;">Print Co Po Mapping sheet</button></td></tr>

	</form>
	<% 
}catch(SQLException e){
	e.printStackTrace();
	
}
%>
</div>
 <jsp:include page="footer.html" /> 
</body>
</html>

