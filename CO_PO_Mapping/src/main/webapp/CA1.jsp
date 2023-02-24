<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<%
String code='C'+request.getParameter("year")+'0'+request.getParameter("pointer");
%>
 <link rel="stylesheet" href="style.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navbar.html" /> 
<form action="CA1add.jsp" >
<table border="1" class="container">
<tr>
<th colspan="3">Questions</th>
<th>CA1</th>
<%for(int i=1;i<=2;i++){%>
<th>Q<%=i %></th>
<%} %>
</tr>
<tr>
<th colspan="3">CO Mapped</th>
<th>Marks</th>
<th> <select name="coname">
    <option value="CO1">CO1</option>
    <option value="CO2">CO2</option>
  </select></th>
 
<th><select name="coname1">
    <option value="CO1">CO1</option>
    <option value="CO2">CO2</option>
    </select>
</th>

</tr>
<tr>
<th>Sr No</th>
<th>Roll No</th>
<th>Name of student</th>
<th>10</th>
<th>5 Marks</th>

<th>5 Marks</th>

</tr>
<%
int year=Integer.parseInt(request.getParameter("year"));

try {
	Class.forName("com.mysql.jdbc.Driver");  
	
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	Statement stmt=connection.createStatement(); 
	PreparedStatement stm=connection.prepareStatement("select prn,name,ca1 from student where year=?");
	stm.setInt(1,year);
	
	ResultSet rs=stm.executeQuery();
	int j=0;
 while(rs.next())
 { 
 j++;%>	
<tr>
<td><%=j %></td>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getInt(3) %></td>
<td><input type="number" name="q1marks<%=Integer.toString(j)%>" value="5"></td>

<td><input type="number" name="q2marks<%=Integer.toString(j)%>" value="5"></td>

</tr>

<%
 }
}
 catch (SQLException e) {
	
	e.printStackTrace();
} catch (ClassNotFoundException e) {

	e.printStackTrace();
}
%>
<tr><td colspan="6"><button type="submit" class="butn button_slide slide_left">Print CA1 Analysis</button></td></tr>
</table>
<input type="hidden" name="year" value=<%=year%>>
<input type="hidden" name="code" value=<%=code%>>
</form>
 <jsp:include page="footer.html" /> 
</body>
</html>