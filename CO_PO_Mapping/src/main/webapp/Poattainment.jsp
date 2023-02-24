<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
      <%@ page import="java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
final DecimalFormat df = new DecimalFormat("0.00");
float avg[]=new float[15];
int count[]=new int [15];
String code='C'+request.getParameter("year")+'0'+request.getParameter("pointer");
String co[]=new String[10];
float coattain[]=new float[10];
String comap[][]=new String[10][15];
float poattain[][]=new float[10][15];
float percent[]=new float[15];
int j=0;
try {
  	Class.forName("com.mysql.jdbc.Driver");  
				
            	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
            	Statement stmt=connection.createStatement(); 
				PreparedStatement stm=connection.prepareStatement("select * from co where cno like ?");
				PreparedStatement stm1=connection.prepareStatement("select * from coattainiaea where code=?");
				PreparedStatement stm2=connection.prepareStatement("select * from comap where cno like ?");

				stm.setString(1,code+"%");
				stm1.setString(1,code);
				stm2.setString(1,code+"%");
				
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
	coattain[0]=Float.parseFloat(rs1.getString(1));
	coattain[1]=Float.parseFloat(rs1.getString(2));
	coattain[2]=Float.parseFloat(rs1.getString(3));
	coattain[3]=Float.parseFloat(rs1.getString(4));
	coattain[4]=Float.parseFloat(rs1.getString(5));
	coattain[5]=Float.parseFloat(rs1.getString(6));
}
j=0;
while(rs2.next())
{
	for(int i=0;i<15;i++)
	{
		comap[j][i]=(rs2.getString(i+2));
	}
	j++;
}

for(int i=0;i<6;i++)
{
	for(int k=0;k<15;k++)
	{
		if(comap[i][k].equals("-"))
		{
			poattain[i][k]=0;
		//	System.out.println("if");
		}
		else
		{
			poattain[i][k]=(coattain[i]*Float.parseFloat(comap[i][k]))/3;
			//System.out.println("else");
			count[k]++;
		}
		avg[k]=avg[k]+poattain[i][k];
	}
}
for(int i=0;i<15;i++)
{
	avg[i]=avg[i]/count[i];
	percent[i]=(avg[i]/3)*100;
}

		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%>
<h2>Achieved CO Through IA+EA</h2>
<table border=1>
<tr>
<th><%=co[0] %></th>
<th><%=co[1] %></th>
<th><%=co[2] %></th>
<th><%=co[3] %></th>
<th><%=co[4] %></th>
<th><%=co[5] %></th>
</tr>
<tr>
<td><%=coattain[0] %></td>
<td><%=coattain[1] %></td>
<td><%=coattain[2] %></td>
<td><%=coattain[3] %></td>
<td><%=coattain[4] %></td>
<td><%=coattain[5] %></td>
</tr>
</table>

<br><br>
<h2>CO PO Mapping</h2>
<table border=1>
<tr>
<th>CO Codes</th>
<th>PO1</th>
<th>PO2</th>
<th>PO3</th>
<th>PO4</th>
<th>PO5</th>
<th>PO6</th>
<th>PO7</th>
<th>PO8</th>
<th>PO9</th>
<th>PO10</th>
<th>PO11</th>
<th>PO12</th>
<th>PSO1</th>
<th>PSO2</th>
<th>PSO3</th>
</tr>
<%for(int i=0;i<6;i++)
{
	%><tr>
	<th><%=co[i]%></th>
	<%
	for(int k=0;k<15;k++)
	{
%>
<td><%=comap[i][k]%></td>

<%}
	%></tr><%} %>

</table>
<br><br>
<h2>PO DIRECT ATTAINMENT</h2>
<table border=1>
<tr>
<th>CO Codes</th>
<th>PO1</th>
<th>PO2</th>
<th>PO3</th>
<th>PO4</th>
<th>PO5</th>
<th>PO6</th>
<th>PO7</th>
<th>PO8</th>
<th>PO9</th>
<th>PO10</th>
<th>PO11</th>
<th>PO12</th>
<th>PSO1</th>
<th>PSO2</th>
<th>PSO3</th>
</tr>
<%for(int i=0;i<6;i++)
{
	%><tr>
	<th><%=co[i]%></th>
	<%
	for(int k=0;k<15;k++)
	{
		if(poattain[i][k]==0)
		{
			%>
			<td>-</td><%
		}
		else
		{
%>
<td><%= df.format(poattain[i][k])%></td>

<%}}
	%></tr><%} %>
<tr>
<th>Average</th>
<%for(int i=0;i<15;i++)
	{
	if(avg[i]>0)
	{
		%>
		<th><%= df.format(avg[i]) %></th><%
	}
	else
	{
 %>
 <th>-</th>
<%}} %>
</tr>
<tr>
<th>Percentage</th>
<%for(int i=0;i<15;i++)
	{
	if(percent[i]>0)
	{
		%>
		<th><%= df.format(percent[i]) %></th><%
	}
	else
	{
 %>
 <th>-</th>
<%}} %>
</tr>
</table>

</body>
</html>