<%-- 
    Document   : userlogin
    Created on : Feb 6, 2016, 11:27:46 AM
    Author     : Mythos-1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Product review System</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Cabin+Condensed' rel='stylesheet' type='text/css'>
<script language="javascript" type="text/javascript">
     function valid()
      {
        var b;
            var user=document.login.username.value;
            var user=user.trim();
            var pass=document.login.password.value;
         if(user == '')
          {
            alert("Please enter Username");
            b = false;
         }
         if(pass == '')
            {
            alert("Please enter password");
            //document.getElementById('error').innerHTML="Please Enter Password";
            b = false;
            }
            return b;
       
     </script>
</head>
<body bgcolor="skyblue">
<div class="wrap">
<div class="header">
	<div class="logo">
		<a href="#"><img src="image/logo1.png" height="130" width="270" alt=""> </a>
	</div>
	<div class="header-right">
	<div class="contact-info">
		<ul>
			<li>Help line</li>
			<li>12345657890</li>
		</ul>
	</div>
	<div class="menu">
	 	 <ul class="nav">       
  		<li class="active"><a href="home.jsp" title="Home">Home</a></li>
                <li><a href="userlogin.jsp">User Login</a></li>
                <li><a href="register.jsp">Create Account</a></li>
                <li><a href="adminlogin.jsp">Admin</a></li>
                <li><a href="about.jsp">About</a></li>
  		<div class="clear"></div>
      </ul>
	 </div>
	 </div>
	<div class="clear"></div>
</div>
<div class="hdr-btm">
<div class="hdr-btm-bg"></div>
<div class="hdr-btm-left">
	<div class="search">
            <form action="login.jsp" method="post">
		<input type="text" value="keyword here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'keyword here';}">
		<input type="submit" value="Search">
	  </form>
	</div>
	<div class="drp-dwn">
<!--		<select class="custom-select" id="select-1">
			<option selected="selected">Catagories</option>
			<option>Select</option>
			<option>A</option>
			<option>B</option>
			<option>C</option>
			<option>D</option>
		</select>-->
	</div>
	<div class="clear"></div>
</div>
</div>
<div class="main">
		<div class="register">
                    
			   <div class="col_1_of_list span_1_of_list login-right login-right1">
			  	<h3>Account Login</h3>
				<p>If you have an Bank account with us, please log in.</p>
                                <form  name="login" method="post" action="login.jsp" onsubmit="return valid();">
                                   <table>
                                       <tr>				  
                                      <td><span>Account Number &nbsp;&nbsp;</span></td>
                                      <td> <input type="text" name="accno" id="username" required></td>
                                       </tr>
                                        <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                       <tr>				  
                                      <td><span>Branch &nbsp;&nbsp;</span></td>
                                      <td> <input type="text" name="branch" id="username" required></td>
                                       </tr>
                                       <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                      <tr>
                                        <td> <span>Password &nbsp;&nbsp;</span></td>
                                        <td><input type="password" name="pass" id="password" size="30" required></td>
                                      </tr>
                                      <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                      <tr>
                                          <td></td>
                                          <td><input type="submit" value="Login to Aoocount"></td>
                                      </tr>
                                   </table>
			       </form>
			   </div>
                   
			   <div class="clearfix"> </div>
	</div>
  <div class="clear"></div>
</div>
</div>
<div class="footer-bg">
<div class="wrap">
<div class="footer">
	<div class="f_nav">
		<ul>
			<li><a href="#">About Us</a></li>
			<li><a href="#">Announcements</a></li>
			<li><a href="#">Security Center</a></li>
			<li><a href="#">Resolution Center</a></li>
			<li><a href="#">Buyer Tools</a></li>
			<li><a href="#">Policies</a></li>
			<li><a href="#">Stores</a></li>			
		</ul>
	</div>
	<div class="footer1">
		<p>All Rights Reserved | 2016&nbsp;</p>
	</div>
</div>
</div>
</div>
</body>
</html>