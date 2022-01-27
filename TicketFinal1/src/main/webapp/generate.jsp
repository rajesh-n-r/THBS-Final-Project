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


</body>
</html>



<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
 
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
 
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>
</head>
<body>
<center>

<link> <button  class="open-button" class="btn"><a href="PassengerBookSir.jsp">BACK</a></link></button>
<button class="open-button" onclick="openForm()">Make Payment</button>

<div class="form-popup" id="myForm">
  <form action="/action_page.php" class="form-container">
    <h1>Payment</h1>

    <label for="number"><b>Card Number</b></label>
    <input type="text" placeholder="Card Number" name="number" >
    
     <label for="cardvalid"><b>Expiry Month and Year</b></label>
 <center> <input type="month" id="month" name="month&year" ></center></br>
</br>
    <label for="psw"><b>Enter CVV</b></label></n>
    <input type="password" placeholder="CVV" name="psw" >
    
    <h1> OR </h1>
    
    <label for="PAY">CHOOSE A PAYMENT OPTION:</label>
    </br></br>

<select id="PAY">
  <option value="PAY">PHONE PE</option>
  <option value="PAY">GOOGLE PAY</option>
  <option value="PAY">AMAZON PAY</option>
  <option value="PAY">BHIM PAY</option>
</select>
</br></br></br>         
<center><img src="https://api.qrserver.com/v1/create-qr-code/?data=HelloWorld&amp;size=100x100" alt="" title="HELLO" /></center>
</br></br>
  <link>  <button type="submit" class="btn" >Pay</button></link>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
<button class="open-button" onclick="window.print()" class="btn">Print Your Ticket</button>

<link> <button  class="open-button" class="btn"><a href="thankyou.html" style="color:#0000ffs">logout</a></link></button>
</center>
</body>
</html>
