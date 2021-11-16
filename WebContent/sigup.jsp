<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration-form</title>
    <link rel="stylesheet" href="Style/sigup.css">
<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style>
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


.data { 
    border-radius: 10px;
    width: 350px;
    height: 400;
    background:black;
    color:white;
    top: 20%;
    left: 35%;
    position: absolute;
    transform: translate(-50);
    opacity: 0.69;
    padding-left: 8px;
    padding-top: 8px;
    padding-bottom: 18px;
    margin: 6px 6px;
}

/* .kp{
    border: 2px solid black;
    background-color: darkgray;
    text-align: center;
    font-family: cursive;
    margin: auto;
} */
body{
    background-image: url('./img/WhatsApp\ Image\ 2021-07-05\ at\ 11.57.08\ AM.jpeg'); 
}

</style>

<body>

 

    <!-- <h3 class="kp" id="bhy">REGISTRATION FORM</h3> -->
    <header>
        <nav class="navbar">
            <ul>
                <p id="firstpara">REGISTRATION FORM </p>
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
    
    <form action="Register" class="data" id="form" method="post">
        <input type="hidden" name="operation" value="register" required >
        <label for="name:">FirstName</label>
        <div>
            <input type="text" name="MyName" id="name">
        </div><br>

        <label for="name:">LastName</label>
        <div> <input type="text" name="MyLastName" id="lastname" required ></div><br>

        <label for="birthdate">D.O.B</label>
        <div><input type="date" name="Mydate" id="date"  required ></div> <br>

        <label for="gender">Gender</label>
        <div><input type="radio" value="male" name="Mygender" required >Male <input type="radio" value="female" name="Mygender">Female <input type="radio"
                name="Mygender">Other</div> <br>

        <label for="name:">MobileNumber</label>
        <div><select name="mycountrycode" id="countrycode">
                <option value="IND">+91</option>
            </select>
            <input type="telss" name="MymobileNo" id="MobileNO." requried >
           
        </div><br>

        <label for="name:">E-mail</label>
        <div><input type="email" name="MyEmail" id="email" required ></div><br>

        <label for="name:">Address</label>
        <div> <input type="text" name="Address" required ></div> <br>

        <label for="password">password</label>
        <div> <input type="password" name="pwdUser" id="pwdUser" placeholder="Enter your Password" required ></div> <br>

      <!--   <label for="C-password">Confirm-password</label>
        <div> <input type="confirmpassword" name="cpwdUser" id="pwdUser" placeholder="Enter your C- Password"></div> <br> -->
       <a href="Home.jsp"><input type="submit" value="submit"> </a>
        <input type="Reset" value="Reset">
    </form>
    
    
   
    
    
    
</body>
</html>