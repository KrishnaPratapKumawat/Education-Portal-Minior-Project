<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
<meta charset="ISO-8859-1"> <title>Education portal</title>
    <link rel="stylesheet" href="Style/Login.css">
 <style type="text/css">
 
 .navbar {
    background-color: black;
    border-radius: 30px;
}

.navbar ul {
    overflow: auto;
}

.navbar li {
    float: left;
    list-style: none;
    margin: 13px 20px;
    padding-top: 3px;
}

.navbar li a {
    padding: 3px 3px;

    text-decoration: none;
    color: rgb(249, 249, 250);
}

.navbar li a:hover {
    color: rgba(255, 238, 0, 0.877);
}

.search {
    float: right;
    color: white;
    padding: 12px 75px;


}

.navbar input {
    border: 2px solid black;
    border-radius: 14px;
    padding: 3px 17px;
    width: 129;
}

#firstpara {
    
    color: white;
    float: left;
    margin-top: 15px;
}
body {
    background-image: url('./img/login-back.jpg');
}

.para{
    border-radius: 10px;
    width: 350px;
    height: 800;
    background:black;
    color:black;
    top: 20%;
    left: 30%;
    position: absolute;
    /* transform: translate(-50); */
    opacity: 0.69;
    padding-left: 18px;
    padding-top: 18px;
    padding-bottom: 18px;
    margin: 94px -16px;
}
 
 
 </style>   
</head>
<body>



  <header>
        <nav class="navbar">
            <ul>
                <p id="firstpara">EDUCATION PORTAL</p>
                <li><a href="Home.jsp" target="blank" >Home</a> </li>
                <li><a href="Login.jsp" target="blank">Log-In</a> </li>
                <li><a href="sigup.jsp" target="blank">Sign-up</a> </li>
                <li><a href="contect.jsp" target="blank">Contact-us</a></li>
                <div class="search">
                    <input type="text" name="search" id="search" placeholder="search">
                
                </div>
            </ul>
        </nav>
    </header>
<%
String msg="";
//msg=request.getParameter("msg");
try{
	msg=request.getParameter("msg");
	System.out.println(msg);
	if(msg!=null){
if(msg.equals("2"))
 {
	%>
	<div class="container mb-3">
	<div class="alert alert-success" role="alert">
      <strong>Successfully!!</strong> Registered successfully!!!.
      <!--  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button> -->
    </div>
    </div>
	<% 	
 }
	
else if(msg.equals("1"))
 {
	%>
	<div class="container mb-3">
	<div  class="alert alert-danger d-flex align-items-center" role="alert">
      <strong>Error!!</strong> Email or password is invalid !!!.
       <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    </div>
	<% 	
	
 }
}
}catch(Exception e)
{
	System.out.println("hello login");
	e.printStackTrace();
}
%>
    <form class="para" action="Register" method="post">
        <label for="name">UserName</label>
         <input type="hidden" name="operation" value="login">
        <div>
       
             <input type="text" name="username" id="username" placeholder="E-mail" required >
        </div> <br>
        <label for="password">password</label>
        <div> <input type="password" name="pwdUser" id="pwdUser" placeholder="Enter your Password" required ></div> <br>    
        <input type="submit" value="Login"> <br>
        <a href="sigup.jsp"> Create an  account </a>
    </form>


</body>
</html>