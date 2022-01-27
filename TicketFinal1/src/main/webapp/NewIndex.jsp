<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <title> Train Ticket Booking </title>
    <link rel="stylesheet" type="text/css" href="Style.css">
</head>

<body>


    <div class="main">
        <div class="navbar">
            <div class="active">
            <a href="#">Home</a>
            </div>
            <div class="title">
			<h1>Indian Railways</h1>
			</div>
            <nav>
            <ul id ='MenuItems'>
                <li> <a href="about.html">About Us</a></li>
                
            </ul>
            <div class="button">
            <li><button class='loginbtn' onclick="document.getElementById('login-form').style.display='block' "
                            style="width: auto;">LOG-IN</button></li>
                             </div>
            </nav>
               
        </div>
        
        <div id='login-form' class='login-page' position='left'>
                     <h3>${message}</h3> 
        <div class="form-box">
        <div class="button-box">
		<div id="btn"></div>
		<button type="button" class="toggle-btn" onclick="login()">Log-In</button>
  		<button type="button" class="toggle-btn" onclick="register()">Register</button>
		</div>
            
        <!---login--->
            <form action="login" id="login" class="input-group-log" method="post">
            <h3>${messageRegisterSucess}</h3> 
            <center>
            <div class="userselect">
			    <td> <select name="typelogin">
                    <option value="-1">----------------Select User Type---------------</option>
                    <option value="Admin">Admin</option>
                    <option value="User">User</option>
                    </select>
                </td>
        		</div>
			<div class="input-group">
               <input type="text" class="input-field" name="username" placeholder="User id" required>
                <input type="password" class="input-field" name="password" placeholder="Enter password" required>
                <input type="checkbox" class="check-box" ><span>  Remember password</span>
                <button type="submit" class="submit-btn-log">Log-in</button>
            </div>
            </center>
            </form>     
            
            
        <!---registration--->
            <form action="register" id="register" class="input-group-reg" method="post">
            
                 <input type="text" class="input-field" id="username" name ="userid" placeholder="User Id" required>
                 <input type="text" class="input-field" id="fname" name="fname" placeholder=" Full Name" required>
                 <input type="password" class="input-field" id="password1" name="password1" placeholder="Enter password" required>
                 <input type="password" class="input-field" id="password2"  name="password2" placeholder="Confirm Password" required>
                 <input type="number" class="input-field" id="phone" name="phoneno" placeholder="10-Digit PhoneN0" required>
                 <input type="text" class="input-field" id="mail" name="email" placeholder="Email Id" required>
                <button type="submit" class="submit-btn-reg" >Sign-up</button>
           </form>
               <div class="social">
        		<a href="https://www.facebook.com/"><img src="fb.png"></img></a>
           		<a href="https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin"><img src="gg.png"></a>
            </div>
        </div>
        
        </div>
        
        
    </div>
    
    <script>
    let x=document.getElementById('login');
    let y=document.getElementById('register');
    let z=document.getElementById('btn');
    function register(){
        	x.style.left="-400px";
        	y.style.left="50px";
        	z.style.left="110px";
        }
    function login(){
        	x.style.left="50px";
        	y.style.left="450px";
        	z.style.left="0px";
        }
    </script>
    
    <script>
        var modal=document.getElementById('login-form');
        window.onclick=function(event)
        {
            if(event.target==modal)
                {
                    modal.style.display="";
                }
        }
        
    </script>
    
     
    
    
    </body></html>

        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
