<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<html>
<head>

<title>Available Trains</title>

    <style>
    center{
     width:100%;
	 height:94vh;
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
                padding:5px

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
            h1 {
                color: pink;
                font-size: 30px;
        		font-weight: bold;
            }
            .blink {
        	animation: blinker 0.9s linear infinite;
        	color: yellow;
        	font-size: 20px;
        	font-weight: bold;
        	font-family: sans-serif;
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
    <h1>INDIAN RAILWAYS</h1>
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
  <br/>
  <br/>
    <form action="checktrains" class="tab red" method="post">
    
	 <h2 text-align ="center" style="color:yellow; width:330px;border:1px solid black;font-size: 20px; padding:8px;background-color: green;Color: white;">Train Number  <input list="num" name="trainno" required>
 			<datalist id="num">
    		<option value="1001">
    		<option value="1002">
    		<option value="1003">
    		<option value="1004">
    		<option value="1005">
    		<option value="1006">
  			</datalist>
</h2>
     <h2 text-align ="center" style="color:yellow; width:330px;border:1px solid black;font-size: 20px; padding:8px;background-color: green;Color: white;" style="color:yellow;">Date <input type="date" name="date" max="12/31/2025" required><br/><h2>

    <h3 align = "center" style="padding: 8px;border-collapse: collapse;font-size: 17px;font-family: sans-serif;"><button><input type="submit" value=" Next "/></button>
	</form>
	<br/>
    
 </center>  		  
</div>		  