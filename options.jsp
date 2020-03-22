<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select</title>
<style>
/* Set height of body and the document to 100% to enable "full page tabs" */
* {
box-sizing: border-box;
}
body {
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  font-family:sans-serif;
}
#AccountCreation {
float:center;
  background : #000000;
  opacity : 0.5;
  height: 550px;
  width: 350px;
  margin: 60px auto;
  border-radius: 20px;
  margin-top:40px;
}
#policyCreation {
margin-left:25%; 	
 margin-top:1px;
}
#viewPolicy {
margin-left:25%; 	
 margin-top:1px;
}
#generateReport {

margin-left:25%; 	
 margin-top:1px;
}
#profileCreation {

float:center;
  background : #000000;
  opacity : 0.5;
  height: 350px;
  width: 350px;
  margin: 60px auto;
  border-radius: 20px;
  margin-top:40px;
}
button {
box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.58);
}
form h1 {
  text-align: center;
  color: rgba(255, 255, 255, 0.42);
  padding-top: 10px;
}
.input-info {
margin-top: 10px;
margin-bottom: 10px
}
input[type="text"] {
    border: 1px solid #ffffff;
    padding: 8px;
    border-radius: 5px;
    width: 90%;
    background: none;
    color: #ffffff;
    margin: 5px 5px 5px 17px;
    outline: none;
    transition: 0.3s;
    text-indent: 15px;
    overflow: hidden;
}
input[type="password"] {
    border: 1px solid #ffffff;
    padding: 8px;
    border-radius: 5px;
    width: 90%;
    background: none;
    color: #ffffff;
    margin: 5px 5px 5px 17px;
    outline: none;
    transition: 0.3s;
    text-indent: 15px;
    overflow: hidden;
}
.input {
    position: absolute;
    margin-top: 14px;
    margin-left: 24px;
    color: #ffffff;
    display: block;
}
.input-info input:hover {
background: #000000;
}
.input-info span {
color: #ffffff;
font-size: 11px;
}
.input-info span>a {
color:#ffffff;
}
.input-info span>a:hover {
color:#808080;
}


.signupbutton{
    padding: 10px;
    margin-top: 1px;
    background: purple;
    color: #ffffff;
    width: 103px;
    border-radius: 6px;
    cursor: pointer;
    transition: 0.5s;
    border: 1px solid #435688;
    outline: none;
}
.signupbutton {
  margin-left : 28%; 
  
  background:#666699;
  border: 0.5px solid #815485;
}
.sign .signupbutton>a {
color: #fff;
text-decoration: none;
}
.sign button:hover{
    background:none;
    border:1px solid #828999;
    color: #828999;
}
::placeholder {
  color: white;
}

:-ms-input-placeholder {
 color: white;
}

::-ms-input-placeholder {}
 color: white;
}
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial;
  
}
.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 20%;
}
.tablink:hover {
  background-color: #777;
}
.tabcontent {
  color: white;
  display: none;
  padding: 100px 20px;
  height: 100%;
}
.logout {
	top:5px;
    left:800px;
} 
#ac {background-color: purple;}
#pc {background-color: purple;}
#vp {background-color: purple;}
#gp {background-color: purple;}
#npc {background-color: purple;}

.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #666699;
   color: white;
   text-align: center;
}
</style>
<style>
#img {
float:left;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 200px;
  margin-top : 40px;
  text-align: center;
  font-family: Candara;
  margin-left:30px;
  
}
</style>
<script>

window.history.forward();
function noBack()
{
	window.history.forward();
}

function openPage(pageName, elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  elmnt.style.backgroundColor = color;
}
document.getElementById("defaultOpen").click();
</script>

</head>

<body style="background-image: url('c3.png');">
<button class="tablink" onclick="openPage('AccountCreation', this,'purple')">ACCOUNT CREATION</button>
<button class="tablink" onclick="openPage('profileCreation', this,'purple')" id="defaultOpen">PROFILE CREATION</button>
<button class="tablink" onclick="openPage('viewPolicy', this,'purple')">VIEW POLICY</button>
<button class="tablink" onclick="openPage('generateReport', this,'purple')">GENERATE REPORT</button>
<button class="tablink" onclick="openPage('newPolicyCreation', this,'purple')">POLICY CREATION</button>

<div class = "logout" align = "right">
	<a href="index.html">
  	<img src="log.png" alt="logout button" style="width:60px;height:55px;border:0;">
    </a>
</div>
<div class = "container">


<div id="AccountCreation" class="tabcontent">
<form id="signupform" action="AccountDetailsServlet" method="POST">
<h2 style = "color : #0458A4; opacity : 1.9; margin-top:0px;"> <center> <strong>ACCOUNT CREATION </strong></center></h2>
    <div class="input-info">
        <i class="input"></i>
        <input type="text" name="UserName" pattern="[a-zA-Z0-9]*" placeholder="User Name" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z ]*"  type="text"  name="InsuredName" placeholder="Insured Name" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z ]*"  type="text"  name="InsuredStreet" placeholder="Insured Street" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z]*"  type="text"  name="InsuredCity" placeholder="Insured City" required>
        <i class="input"></i>
        <input pattern="[a-zA-Z ]*"  type="text"  name="InsuredState" placeholder="Insured State" required>
		 <i class="input"></i>
        <input type="text" title = "Enter exactly 5 digits."  pattern="^\d{5}$" name="InsuredZip" placeholder="Insured Zip" required>
        <i class="input"></i> 
     <input type="text" name="LOB" placeholder="Business Segment" list="dr" required>
      <datalist id="dr">
      <option name = "BusinessAuto" value = "Business Auto"></option>
      <option name = "Restuarant" value = "Restuarant"></option>
      <option name = "Apartment" value = "Apartment"></option>
      <option name = "GeneralMerchant" value = "General Merchant"></option>
      </datalist>
        
    </div>
    <div class="sign" align = "center">
            <input type="submit" class="signupbutton"><i class="input"></i>
    </div>
    </div>
</form>

</div>

<div style="margin-top: 40px" id="profileCreation" class="tabcontent">
  <form id="signupform" action="UserCreationServlet" method="POST">
<h2 style = "color : #0458A4; opacity : 1.9; margin-top:0px;"> <center> <strong>PROFILE CREATION </strong></center></h2>
    <div class="input-info">
        <i class="input"></i>
        <input pattern="[a-zA-Z0-9]*"  type="text"  name="uname" placeholder="User Name" required>
        <i class="input"></i>
         <input type = "password"  name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,12}" title="Must contain at least one number and one uppercase and lowercase letter, and have 8 to 12 characters" placeholder = "password" required>
      <input type="text" name="rolecode" placeholder="Role Code" list="lr" required>
      <datalist id="lr">
      <option value = "Admin" name="Admin"></option>
      <option value = "Agent" name="Agent"></option>
      <option value = "Insured" name="Insured"></option>
      </datalist>
    </div>
    <div class="sign">
            <input type="submit" class="signupbutton"><i class="input"></i>
    </div>
</form>

</div>

<div id="viewPolicy" class="tabcontent">
  <iframe src="viewPolicy.jsp"
     height="900" width="80%" allowtransparency="true"></iframe>
</div>

<div id="generateReport" class="tabcontent">
  <iframe src="detailedReportGeneration.jsp"
     height="900" width="100%" allowtransparency="true"></iframe>
</div>

<div id="newPolicyCreation" class="tabcontent">
 	<iframe src="policyCreation.jsp"
     height="900" width="100%" allowtransparency="true"></iframe>
</div>
	</div>
	
	
</body>



</html>
