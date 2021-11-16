<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Home</title>
  <!-- <link rel="stylesheet" href="Style/home1.css"> -->
    <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->

    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@600&display=swap" rel="stylesheet">
<style type="text/css">

@charset "ISO-8859-1";
body {
    font-family: 'Baloo Bhai 2', cursive;

    margin: 0px;
    padding: 0px;
    background-image: url('./img/education1.jpg');

}

 .left {
    display: inline-block;
    position: absolute;
    left: 8px;
    top: 15;
    display: inline-block;
    color: white;
}

.left img {
    width: 136px;
    filter: invert(100%);
} 
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
    color: black;
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
}

.btn {
    font-family: 'Baloo Bhai 2', cursive;
    margin: 0px 9px;
    background-color: black;
    color: white;
    padding: 4px 14px;
    border: 2px solid grey;
    border-radius: 10px;
    font-size: 20px;
    cursor: pointer;
     text-decoration: none;
}

.btn:hover {
    background-color: rgb(87, 85, 185);
}

.container {
    /* border: 2px solid green; */
    margin: 132px 125px;
    padding: 35px;
    width: 31%;
    border-radius: 28px;
    background-color: whitesmoke;
    opacity: 0.79;
}

.form-group input {
    font-family: 'Baloo Bhai 2', cursive;
    text-align: center;
    display: block;
    width: 400px;
    padding: 6px;
    border: 2px solid black;
    margin: 11px auto;
    border-radius: 8px;
}

.container h1 {
    text-align: center;
}

.container button {
    display: block;
    width: 74%;
    margin: 20px auto;
}

</style>

</head>
<body>

 <header class="header">
        <!-- left box for logo -->
        <div class="left">
            <img src="img/logo.jpg" alt="">
            <div> EDUCATION PORTAL</div>

        </div>
        <!-- mid box for navbar -->
        <nav class="navbar">
            <ul>
                <p id="firstpara">hnnvdnbinbbp
                </p>
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
        	boolean	flag=false;
        		msg=request.getParameter("msg");
        		System.out.println(msg);
try{
if(msg!=null){	
if(msg.equals("2"))
 {
	%>
	<!-- <div class="container mb-3">
	<div class="alert alert-success" role="alert">
      <strong>Successfully!!</strong> Login successfully!!!.
       <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    </div> -->
    <script>
    alert("Login successfully!!!. ")
    </script>
	<% 	
 }
else if(msg.equals("3"))
{    flag=true;
  %>
    <div class="container">
  
     <h2>Thanks for Enquiry</h2>    
      We will Contact you........
      
   
    
    </div>
  
  <%	
}
else
{
	%>
	
	
	<% 
}

}
}catch(Exception e)
{
	
	e.printStackTrace();
}
%>
    <% 
    if(!flag){
    %>
     <div class="container">
        <h1>Join the best education portal</h1>
        <form action="Enquiry" method="post">
            <div class="form-group">
                <input type="text" Name="name" placeholder=" Enter your name" required >
            </div>
            <div class="form-group">
                <input type="text" Name="clgname" placeholder="Enter your college name" required >
            </div>
            <div class="form-group">
                <input type="text" Name="email" placeholder="Enter your E-mail " required >
            </div>
             <div class="form-group">
         
                <input type="text" Name="Mobile" placeholder="Enter your Number " required >
            </div> 

            <button class="btn">  Submit </button>
           <p> Have already an account?
             <a href="Login.jsp">Sign-in</a></p>

        </form>

    </div>
     <% }
     %>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
 --></body>
</html>