<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.torryharris.model.Ticket1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href=main.css>

<title>Train Ticket Generator</title>
</head>
<body>

<h1>Your Train Ticket Information</h1>
<%Ticket1 ticket = (Ticket1)request.getAttribute("ticket");%>
<% StringBuilder ticketOutput = ticket.generateTicket();%>
<pre id="ticket"><%= ticketOutput.toString() %></pre>
<button onclick="window.print()" class="btn">Print Your Ticket</button>

</body>
</html>



