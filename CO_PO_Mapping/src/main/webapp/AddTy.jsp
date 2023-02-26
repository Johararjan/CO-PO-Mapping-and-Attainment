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
<div class="container"> 
<form action="AddTy.jsp">
Upload the File
<input type="file" name="filen">
<button class="butn button_slide slide_left" type="submit" name="button" style="padding:15px 30px;">Submit</button>
</form>

<%@ page import="java.io.*,java.sql.*"%>
<%
//change in feature branch
String filen=request.getParameter("filen");
String filePath="D:\\eclipse\\CO_PO_Mapping\\data\\"+filen;
int batchSize=20;

Connection connection;


try{
	Class.forName("com.mysql.jdbc.Driver");
    connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
    connection.setAutoCommit(false);

    String sql="insert into student values(?,?,3,?,?,?,?)";

    PreparedStatement statement=connection.prepareStatement(sql);

    BufferedReader lineReader=new BufferedReader(new FileReader(filePath));

    String lineText=null;
    int count=0;

    lineReader.readLine();
    while ((lineText=lineReader.readLine())!=null){
        String[] data=lineText.split(",");
        String id=data[0];
        String name=data[1];
        String ca1=data[2];
        String mid=data[3];
        String ca2=data[4];
        String endsem=data[5];
   //    out.print("ca1"+ca1);
   //    out.print("ca2"+ca2);
    //   out.print("mid"+mid);


        statement.setString(1,id);
        statement.setString(2,name);
        statement.setString(3,ca1);
        statement.setString(4,mid);
        statement.setString(5,ca2);
        statement.setString(6,endsem);
        statement.addBatch();
        if(count%batchSize==0){
            statement.executeBatch();
        }
    }
    lineReader.close();
    statement.executeBatch();
    connection.commit();
    connection.close();
   %>
   <h1>Data Inserted Successfully</h1>
<% 
}
catch (Exception exception){
    exception.printStackTrace();
}

%>
</div>
<jsp:include page="footer.html" /> 
</body>
</html>
