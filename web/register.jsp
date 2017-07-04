<%-- 
    Document   : register
    Created on : Feb 6, 2016, 11:29:12 AM
    Author     : Mythos-1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%--<script src="validateform.js" type="text/javascript"></script>--%>
   <script>
        function validateForm() {
    var x = document.forms["login"]["fname"].value;
    if (x == "") {
        alert("Name must be filled out");
        return false;
    }
    
    var y = document.forms["login"]["mobno"].value;
    if(isNaN(y)){
        alert("Enter only numbers");
        return false;
               
    }
        if (y == "") {
        alert("Mobile number must be filled out");
        return false;
}
var z = document.forms["login"]["email"].value;          
    if (z == "") {
        alert("Email ID must be filled out");
        return false;
}
var p = document.forms["login"]["pass"].value;
    if (p == "") {
        alert("Password 1 must be filled out");
        return false;
}


}

        </script>

<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Cabin+Condensed' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="wrap">
<div class="header">
	<div class="logo">
		<a href="index.jsp"><img src="image/logo1.png" height="130" width="270" alt=""> </a>
	</div>
	<div class="header-right">
	<div class="contact-info">
		<ul>
                    <li><br/></li>
                    <li><br/></li>
		</ul>
	</div>
	<div class="menu">
	 	 <ul class="nav">
       <li class="active"><a href="index.jsp" title="Home">Home</a></li>
                <li><a href="userlogin.jsp">User Login</a></li>
                <li><a href="register.jsp">Create Account</a></li>
                
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
	  <form>
		
	  </form>
	</div>	
	<div class="clear"></div>
</div>
</div>
<div class="main">
                    <div class="register  login-right1 login-right2 login-right">         
				 <div class="register-top-grid">
                                       <fieldset>
                                     <center>
					<h3>Create an Account</h3>
			<table border="0" width="47%" cellpadding="5">
                            <form  name="login" action="reg.jsp" method="post" onsubmit=" return validateform()"/>
                            <tbody>
                          
                                <tr>
                                    <td width="23%">First Name</td>
                                    <td width="77%"><input type="text" name="fname" /></td>
                                </tr>
                                <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td width="23%">Middle Name</td>
                                    <td width="77%"><input type="text" name="mname" /></td>
                                </tr>
                                <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td width="23%">Last Name</td>
                                    <td width="77%"><input type="text" name="lname" /></td>
                                </tr>
                                 <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td>Mobile No.</td>
                                    <td><input type="text" name="mobno" maxlength="10"/></td>
                                </tr>
                                 <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td>Date of birth</td>
                                    <td><input type="date" name="dob"/></td>
                                </tr>
                                 <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td width="23%">Account Number</td>
                                    <td width="77%"><input type="text" name="accno" /></td>
                                </tr>
                                  <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td width="23%">Balance</td>
                                    <td width="77%"><input type="text" name="balance" /></td>
                                </tr>
                                <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td width="23%">IFSC code</td>
                                    <td width="77%"><input type="text" name="ifsc" /></td>
                                </tr>
                                <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td width="23%">Account Type</td>
                                    <td width="77%"><input type="text" name="acctype" /></td>
                                </tr>
                                 <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td>Email id</td>
                                    <td><input type="text" name="email"/></td>
                                </tr>
                                 <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                       <tr>
                                    <td width="23%">Address</td>
                                    <td width="77%"><input type="text" name="add1" /></td>
                                </tr>
                                <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td width="23%">Branch Name</td>
                                    <td width="77%"><input type="text" name="branch" /></td>
                                </tr>
                                <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td>Password</td>
                                    <td><input type="password" name="pass"/></td>
                                </tr>  
                                   <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td> Confirm Password</td>
                                    <td><input type="password" name="cpass"/></td>
                                </tr>  
                                 <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                <tr>
                                    <td></td>
                                    <td><br><input type="submit" value="submit"/></td>
                                </tr>                                  
                                </form>

                            </tbody>
                        </table>					 			    
				</center>	
                                           </fieldset>
				</div>
		   </div> 
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
			<li><a href="#">Site Map</a></li>
		</ul>
	</div>
	<div class="footer1">
		<p>All Rights Reserved | 2016</p>
	</div>
</div>
</div>
</div>
<script src="non-empty.js" type="text/javascript"></script>
</body>
</html>