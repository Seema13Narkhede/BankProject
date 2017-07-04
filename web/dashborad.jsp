<%-- 
    Document   : dashborad
    Created on : Jun 7, 2017, 1:19:33 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Product Review System</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Cabin+Condensed' rel='stylesheet' type='text/css'>
</head>
   <body bgcolor="skyblue">
    <%
           String user=(String)session.getAttribute("accno");
    if ((session.getAttribute("accno") == null) || (session.getAttribute("accno") == "")) {
%>

<%} else {
%>


<div class="wrap" background-color="skyblue">
<div class="header">
	<div class="logo">
		<a href="index.jsp"><img src="image/logo1.png" height="130" width="270" alt=""></a>
	</div>
	<div class="header-right">
	<div class="contact-info">
		<ul>
			<li>Help line</li>
			<li>1234567890</li>
		</ul>
	</div>
	<div class="menu">
	 	 <ul class="nav">
                    <li><a href="Deposit.jsp">Deposit</a></li>
                    <li><a href="withdraw.jsp">Withdraw</a></li>
                    <li><a href="transfer.jsp">Transfer</a></li>
                    <li><a href='home.jsp'>Logout</a></li>
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
		<input type="text" value="keyword here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'keyword here';}">
		<input type="submit" value="Search">
	  </form>
	</div>
	<div class="txt-right">
	</div>
	<div class="clear"></div>
</div>
</div>
<div class="main">
<div class="sidebar">
<div class="s-main">
</div>
</div>
<div class="content">
	<div class="clear"></div>
	<div class="cnt-main">
		<div class="s_btn">
			<ul>
                            <MARQUEE><li><h1><b><p style="color: #0099ff">Welcome <%=session.getAttribute("accno")%></p></b></h1></li></MARQUEE>
                               
				<div class="clear"></div>
                                
			</ul>
		</div>
            
               
                            <center>
       <div class="cnt-main btm">
	<div class="section group">
            <center><img src="image/bank1.jpg" alt=""></a></center>
	</div>
       </div>
                            </center>
           
</div>
                             

			</div>
    
</div>
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

<%
    }
%>

    </body>
</html>
