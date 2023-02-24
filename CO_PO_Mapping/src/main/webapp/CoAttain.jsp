<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>CO Attainment Throught IA</h2>
<table border=1>
<tr>
<th>Test</th>
<% 
int c1[]=new int[6],c2[]=new int[6],m[]=new int[6];
int avg[]=new int[6];
String code='C'+request.getParameter("year")+'0'+request.getParameter("pointer");

try {
  	Class.forName("com.mysql.jdbc.Driver");  
				
            	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
            	Statement stmt=connection.createStatement(); 
				PreparedStatement stm=connection.prepareStatement("select * from co where cno like ?");
				stm.setString(1,code+"%");
				
				ResultSet rs=stm.executeQuery();
while(rs.next())
{
%>

<th><%=rs.getString(1) %></th>

<%
}				
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%></tr>
<tr><th>CA1</th><%
try {
  	Class.forName("com.mysql.jdbc.Driver");  
				
            	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
            	Statement stmt=connection.createStatement(); 
				PreparedStatement stm=connection.prepareStatement("select * from ca1 where code =?");
				stm.setString(1,code);
				
				ResultSet rs=stm.executeQuery();
while(rs.next())
{
	c1[0]=Integer.parseInt(rs.getString("lq1"));
	c1[1]=Integer.parseInt(rs.getString("lq2"));
%>

<th><%=rs.getString("lq1") %></th>
<th><%=rs.getString("lq2") %></th>
<th>-</th>
<th>-</th>
<th>-</th>
<th>-</th>
<%
}				
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%></tr>
<tr><th>MID SEM</th><%
try {
  	Class.forName("com.mysql.jdbc.Driver");  
				
            	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
            	Statement stmt=connection.createStatement(); 
				PreparedStatement stm=connection.prepareStatement("select * from midsem where code =?");
				stm.setString(1,code);
				
				ResultSet rs=stm.executeQuery();
while(rs.next())
{
	m[1]=Integer.parseInt(rs.getString("lq1"));
	m[2]=Integer.parseInt(rs.getString("lq2"));
	m[3]=Integer.parseInt(rs.getString("lq3"));
%>
<th>-</th>
<th><%=rs.getString("lq1") %></th>
<th><%=rs.getString("lq2") %></th>
<th><%=rs.getString("lq3") %></th>
<th>-</th>
<th>-</th>
<%
}				
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%></tr>
<tr><th>CA2</th><%
try {
  	Class.forName("com.mysql.jdbc.Driver");  
				
            	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
            	Statement stmt=connection.createStatement(); 
				PreparedStatement stm=connection.prepareStatement("select * from ca2 where code =?");
				stm.setString(1,code);
				
				ResultSet rs=stm.executeQuery();
while(rs.next())
{
	c2[3]=Integer.parseInt(rs.getString("lq1"));
	c2[4]=Integer.parseInt(rs.getString("lq1"));
%>
<th>-</th>
<th>-</th>
<th>-</th>
<th><%=rs.getString("lq1") %></th>
<th><%=rs.getString("lq2") %></th>
<th>-</th>

<%
}				
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}


avg[0]=(c1[0]+c2[0]+m[0])/1;
avg[1]=(c1[1]+c2[1]+m[1])/2;
avg[2]=(c1[2]+c2[2]+m[2])/1;
avg[3]=(c1[3]+c2[3]+m[3])/2;
avg[4]=(c1[4]+c2[4]+m[4])/1;
avg[5]=0;	
%></tr>
<tr>
<th>Average CO</th>
<th><%=avg[0]%></th>
<th><%=avg[1]%></th>
<th><%=avg[2]%></th>
<th><%=avg[3]%></th>
<th><%=avg[4]%></th>
<th>-</th>
</tr>
</table>



<%
try {
	Class.forName("com.mysql.jdbc.Driver");  
	
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	Statement stmt=connection.createStatement(); 
	PreparedStatement stm=connection.prepareStatement("insert into coattaininter values(?,?,?,?,?,?,?)");
	stm.setString(1,Integer.toString(avg[0]));
	stm.setString(2,Integer.toString(avg[1]));
	stm.setString(3,Integer.toString(avg[2]));
	stm.setString(4,Integer.toString(avg[3]));
	stm.setString(5,Integer.toString(avg[4]));
	stm.setString(6,Integer.toString(avg[5]));
	stm.setString(7,code);
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