<%@page import="java.sql.*" %>


<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<html>
<head>
<title>The database table</title>
</head>

 <h1>The view of database table</h1>

    <%
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Rajuraju@1");
   	Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery("select * from tickets where counter=217 ");
    
    //PreparedStatement ps=con.prepareStatement("select * from tickets where pnr=? ");
	//ps.setString(1,pnr);
	//resultSet resultSet =ps.executeQuery();
	
	 //resultSet=ps.executeQuery();
    %>  
    <Table border='1'>
    <tr>
    <th>counter</th>
    <th>pnr</th>
    <th>travelDate</th>
     <th>trainNo</th>
    <th>trainName</th>
    <th>source</th>
    <th>destination</th>
    <th>ticketPrice</th>
    </tr>
    <%while(resultSet.next()){ %>
    <tr>
    <td><%=resultSet.getString(1) %></td>
    <td><%=resultSet.getString(2) %></td>
    <td><%=resultSet.getString(3) %></td>
    <td><%=resultSet.getString(4) %></td>
    <td><%=resultSet.getString(5) %></td>
    <td><%=resultSet.getString(6) %></td>
    <td><%=resultSet.getString(7) %></td>
    <td><%=resultSet.getString(8) %></td>
    </tr>
    <%} %>
   
