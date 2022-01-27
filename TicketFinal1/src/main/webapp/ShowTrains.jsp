<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<html>
<head>
<title>Available Trains</title>
    <style>
    
    body{
    margin: -17px auto;
    padding: 0;
    height: 100%;
    width: 100%;
    }
    
center{
     height: 101.2vh;
     width: 100%;
	 background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(avail.png);
	 background-size: cover;
	 background-position: center;
    }
       table {
                border-collapse: collapse;
            }
            th {
                background-color:green;
                Color:white;
            }
            th, td {
                width:150px;
                text-align:center;
                border:1px solid black;
                padding:5px;

            }
            td {
            	background-color: rgb(255,122,43);
           		Color: #fff;
            }
            .geeks {
                border-right:hidden;
                font-family: sans-serif;
            }
            .gfg {
                border-collapse:separate;
                border-spacing:0 15px;
            }
            .blink {
        	animation: blinker 0.9s linear infinite;
        	color: yellow;
        	font-size: 30px;
        	font-weight: bold;
        	margin: 9px auto;
        	font-family: sans-serif;
        	padding:30px;
      		}
      		@keyframes blinker {
        	50% {
          	opacity: 0;
        	}
      		}
      		
      		
        </style>
</head>
<body> 
  <center>
    <h2 class="blink">Trains Availabe</h2>
   
    <%
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Rajuraju@1");
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery("select * from trains");
    %>  
    <Table border='1'>
    <tr>
    <th>Train_No</th>
    <th>Train_Name</th>
    <th>Source</th>
    <th>Destination</th>
    <th>Ticket_Price</th>
    </tr>
    <%while(resultSet.next()){ %>
    <tr>
    <td><%=resultSet.getString(1) %></td>
    <td><%=resultSet.getString(2) %></td>
    <td><%=resultSet.getString(3) %></td>
    <td><%=resultSet.getString(4) %></td>
    <td><%=resultSet.getString(5) %></td>
    </tr>
    <%} %>
    
    </Table>
    </br>
    
   
<link> <button  class="table" ><a href="Admin.html">BACK</a></link></button></center>   
		  
    
</body>
</html>
