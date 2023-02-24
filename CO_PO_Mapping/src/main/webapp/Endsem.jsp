<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<%
String code='C'+request.getParameter("year")+'0'+request.getParameter("pointer");
int year=Integer.parseInt(request.getParameter("year"));
float avg=0,per=0;
int yco=0,nco=0,j=0,l=0;
try {
	Class.forName("com.mysql.jdbc.Driver");  
	
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	Statement stmt=connection.createStatement(); 
	PreparedStatement stm=connection.prepareStatement("select endsem from student where year=?");
	stm.setInt(1,year);
	
	ResultSet rs=stm.executeQuery();
	int j1=0;
 while(rs.next())
 { 
 j1++;
 avg=avg+Integer.parseInt(rs.getString(1));
 }
 avg=avg/j1;
 per=(avg/60)*100;
 }
  catch (SQLException e) {
 	
 	e.printStackTrace();
 } catch (ClassNotFoundException e) {

 	e.printStackTrace();
 }
 




%>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<table border="1">
<tr>
<th>SR NO</th>
<th>PRN</th>
<th>Name of Student</th>
<th>END SEM</th>
<th>C01</th>
<th>C02</th>
<th>C03</th>
<th>C04</th>
<th>C05</th>
<th>CO6</th>
</tr>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");  
	
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	Statement stmt=connection.createStatement(); 
	PreparedStatement stm=connection.prepareStatement("select prn,name,endsem from student where year=?");
	stm.setInt(1,year);
	
	ResultSet rs=stm.executeQuery();

	char yes;
	
 while(rs.next())
 { 
 j++;
 if(Integer.parseInt(rs.getString(3))>=avg)
 {
	yes='Y';
	yco++;
 }
 else
 {
	 yes='N';
	 nco++;
 }
 %>	
<tr>
<td><%=j %></td>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<% for(int i=1;i<=6;i++)
	{%>
<td><%=yes %></td>
<%}
if(per>70)
{
	l=3;
}
else if(per>50&&per<=70)
{
	l=2;
}
else
{
	l=1;
}





%>

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
<tr>
<td colspan=3>Average</td>
<td><%=avg %></td>
<td colspan=6></td>
</tr>
</table>
<br><br>
<table border=1>
<tr>
<th>Total Student Result</th>
<td><%=j%></td>
</tr>
<tr>
<th>Average Marks</th>
<td><%=avg %></td>
</tr>
<tr>
<th>Class Average Percentage</th>
<td><%=per%></td>
</tr>
<tr>
<th>All CO Attainment</th>
<td><%=l %></td>
</tr>
<tr>
<th>Y Count</th>
<td><%=yco %></td>
</tr>
<tr>
<th>N Count</th>
<td><%=nco %></td>
</tr>
</table>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");  
	
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	Statement stmt=connection.createStatement(); 
	PreparedStatement stm=connection.prepareStatement("insert into endsem values(?,?)");
	stm.setString(1,Integer.toString(l));
	stm.setString(2,code);
	stm.execute();
	
}
catch (SQLException e) {
	
	e.printStackTrace();
} catch (ClassNotFoundException e) {

	e.printStackTrace();
}
%>



</body>
</html>