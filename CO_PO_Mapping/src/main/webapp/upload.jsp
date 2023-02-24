<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*"%>
<%


String filePath="C:\\Users\\LENOVO\\Downloads\\CsvToDatabaseJava-master\\data.csv";

int batchSize=20;

Connection connection;


try{
	Class.forName("com.mysql.jdbc.Driver");
    connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/copomapping","root","@Arjan196");
    connection.setAutoCommit(false);

    String sql="insert into student values(?,?)";

    PreparedStatement statement=connection.prepareStatement(sql);

    BufferedReader lineReader=new BufferedReader(new FileReader(filePath));

    String lineText=null;
    int count=0;

    lineReader.readLine();
    while ((lineText=lineReader.readLine())!=null){
        String[] data=lineText.split(",");

        String id=data[0];
        String name=data[1];

        statement.setInt(1,Integer.parseInt(id));
        statement.setString(2,name);
        statement.addBatch();
        if(count%batchSize==0){
            statement.executeBatch();
        }
    }
    lineReader.close();
    statement.executeBatch();
    connection.commit();
    connection.close();
    System.out.println("Data has been inserted successfully.");

}
catch (Exception exception){
    exception.printStackTrace();
}

%>
