<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
<style>
* {
box-sizing: border-box;
}
body {
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  font-family:sans-serif;
}
form {
  background : #000000;
  opacity : 0.5;
  height: 300px;
  width:300px;
  margin: 60px auto;
  border-radius: 20px;
  margin-top:230px;
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
    background: #2D0901;
    color: #ffffff;
    width: 103px;
    border-radius: 6px;
    cursor: pointer;
    transition: 0.5s;
    border: 1px solid #435688;
    outline: none;
}
.signupbutton {
  margin-left : 30%;
  background: purple;
  border: 0.5px solid #ffffff;
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

::-ms-input-placeholder { 
 color: white;
}
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
</head>
<body style="background-image: url('c3.png');">


<form id="signupform" action="options.jsp" method="POST">
<h1 style = "color : #ffffff; opacity : 1.9;">Enter</h1>
    <div class="input-info">
        <i class="input"></i>
        <input  type="text"  name="location" placeholder="Location" required>
         <i class="input"></i>
        <input type="text" name="date" placeholder="Date and Time" required>
    </div>
    <div class="sign">
        <a href="" target="_blank">
            <button class="signupbutton" form="signupform"><i class="input"></i><b>Confirm</b></button>
        </a>
    </div>
</form>

</body>
</html>