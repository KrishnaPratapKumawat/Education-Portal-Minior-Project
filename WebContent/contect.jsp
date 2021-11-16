<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Contact-US</title>
    <style>
        body{
            background-color:lightblue;
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
}
    </style>

</head>
<body>
 
    <header>
        <nav class="navbar">
            <ul>
                <p id="firstpara">Education portal</p>
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
    <img class="hidden-xs" style="width: 270px; margin: 0 15px 15px 15px; float: right;" src="https://cfcdn-skin.zulily.com/images/contact_us/contact_girl.png" alt="">
    <h3>Contact-us</h3>
    <h4>Help Center</h4> <br>
<div> Got a question? Start with our <a href="#">Help Center</a></div><br>

<div> You'll find answers to the most commonly asked questions about Examserver, Page not working  and more.</div> <br>

<h4>Chat </h4>
<p>
To chat with Customer Service, tap the purple chat bubble in the bottom right corner of this page. If you don't see the chat bubble, please disable AdBlock in your browser settings </p> <br>

<h4>Phone and Email </h4>
<div>
Monday - Friday, 5am-8pm PT </div> <br>

 <div> Saturday/Sunday, 6am-6pm PT </div> <br>
<div>
Krishna <br>
(+91) 822-XXXX-951 <br>
service-:TechnicalCoder@.com<br>
WebPage-:kpkProtfolio.000webhost.com </div>

</body>
</html>