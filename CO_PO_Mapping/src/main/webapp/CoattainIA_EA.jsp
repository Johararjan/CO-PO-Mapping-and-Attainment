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
<%
String code='C'+request.getParameter("year")+'0'+request.getParameter("pointer");
String co[]=new String[10];
float cointer[]=new float[10];
float coexter[]=new float[10];
float cointer40[]=new float[10];
float coexter60[]=new float[10];
float coattain[]=new float[10];
int j=0;
try {
  	Class.forName("com.mysql.jdbc.Driver");  
				
            	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
            	Statement stmt=connection.createStatement(); 
				PreparedStatement stm=connection.prepareStatement("select * from co where cno like ?");
				PreparedStatement stm1=connection.prepareStatement("select * from coattaininter where code=?");
				PreparedStatement stm2=connection.prepareStatement("select * from endsem where code=?");
				stm.setString(1,code+"%");
				stm1.setString(1,code);
				stm2.setString(1,code);
				
				ResultSet rs=stm.executeQuery();
				ResultSet rs1=stm1.executeQuery();
				ResultSet rs2=stm2.executeQuery();
while(rs.next())
{
co[j]=rs.getString(1);
j++;
}				
while(rs1.next())
{
	cointer[0]=Integer.parseInt(rs1.getString(1));
	cointer[1]=Integer.parseInt(rs1.getString(2));
	cointer[2]=Integer.parseInt(rs1.getString(3));
	cointer[3]=Integer.parseInt(rs1.getString(4));
	cointer[4]=Integer.parseInt(rs1.getString(5));
	cointer[5]=Integer.parseInt(rs1.getString(6));
}
while(rs2.next())
{
	coexter[0]=Integer.parseInt(rs2.getString(1));
	coexter[1]=Integer.parseInt(rs2.getString(1));
	coexter[2]=Integer.parseInt(rs2.getString(1));
	coexter[3]=Integer.parseInt(rs2.getString(1));
	coexter[4]=Integer.parseInt(rs2.getString(1));
	coexter[5]=Integer.parseInt(rs2.getString(1));
}

for(int i=0;i<6;i++)
{
	cointer40[i]=(cointer[i]*40)/100;
	coexter60[i]=(coexter[i]*60)/100;
	coattain[i]=cointer40[i]+coexter60[i];
}
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%>
<h2>CO Attainment Through IA+EA</h2>
<table border=1>
<tr>
<th>Course Outcomes</th>
<th>IA</th>
<th>EA</th>
<th>IA-40%</th>
<th>EA-60%</th>
<th>IA-40% + EA-60%</th>
</tr>
<%for(int i=0;i<6;i++)
	{%>
<tr>
<td><%=co[i] %></td>
<td><%=cointer[i] %></td>
<td><%=coexter[i] %></td>
<td><%=cointer40[i] %></td>
<td><%=coexter60[i] %></td>
<td><%=coattain[i] %></td>
</tr>
<%} %>
</table>








<%
try {
	Class.forName("com.mysql.jdbc.Driver");  
	
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
	Statement stmt=connection.createStatement(); 
	PreparedStatement stm=connection.prepareStatement("insert into coattainiaea values(?,?,?,?,?,?,?)");
	stm.setString(1,Float.toString(coattain[0]));
	stm.setString(2,Float.toString(coattain[1]));
	stm.setString(3,Float.toString(coattain[2]));
	stm.setString(4,Float.toString(coattain[3]));
	stm.setString(5,Float.toString(coattain[4]));
	stm.setString(6,Float.toString(coattain[5]));
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