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
<div class="wrap">
<div class="header">
	<div class="logo">
		<a href="#"><img src="image/logo1.png" height="120" width="250" alt=""> </a>
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

 <div class="sidebar">
<div class="s-main">
	<div class="s_hdr">
		<h2>Dashboard</h2>
	</div>
	<div class="text1-nav">
		<ul>
			
                <li><a href="Deposit.jsp">Deposit</a></li>
                    <li><a href="withdraw.jsp">Withdraw</a></li>
                    <li><a href="transfer.jsp">Transfer</a></li>
                 
	    </ul>
	</div>
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
            
               
       
       <div class="cnt-main btm">
	<div class="section group">
            <center>
              <div class="col_1_of_list span_1_of_list login-right login-right1">
			  	<h3>Withdraw Money</h3>
				
                                <form  name="login" method="post" action="with.jsp" onsubmit="return valid();">
                                   <table>
                                       
                                      <tr>
                                        <td> <span> Amount &nbsp;&nbsp;</span></td>
                                        <td><input type="text" name="num" id="deposit" size="30" required></td>
                                      </tr>
                                      <tr>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                           <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                       </tr>
                                      <tr>
                                          <td></td>
                                          <td><input type="submit" value="Withdraw"></td>
                                      </tr>
                                   </table>
			       </form>
			   </div>
            </center>
	</div>
       </div>
           
           
</div>
                             

			</div>
      
</div>
</div>
<div class="main">
		<div class="register">
			   <div class="col_1_of_list span_1_of_list login-left">
			  	 
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
<%
}
%>
</body>
</html>