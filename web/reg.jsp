<%-- 
    Document   : reg
    Created on : Jun 6, 2017, 5:52:05 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
<%
     try{
    String fname = request.getParameter("fname");
    String mname = request.getParameter("mname");
    String lname = request.getParameter("lname");
    String mobno = request.getParameter("mobno");
    String dob = request.getParameter("dob");
    String accno = request.getParameter("accno");
 int balance = Integer.parseInt(request.getParameter("balance"));
    String ifsc = request.getParameter("ifsc");
    String acctype = request.getParameter("acctype");
    String email = request.getParameter("email");
    String add1 = request.getParameter("add1");
    String branch = request.getParameter("branch");
    String pass = request.getParameter("pass");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
    Statement st = con.createStatement();
   ResultSet rs;
   
    int i = st.executeUpdate("insert into accountreg(fname, mname, lname, mobno, dob, accno, balance, ifsc, acctype, email, add1, branch, pass, regdate) values ('" + fname + "','" + mname + "','" + lname + "','" + mobno + "','" + dob + "','" + accno + "','" + balance + "','" + ifsc + "','" + acctype + "','" + email + "','" + add1 + "','" + branch + "','" + pass + "', CURDATE())");
    if (i > 0) {
        session.setAttribute("fname", fname);
        response.sendRedirect("userlogin.jsp");
   System.out.println(fname);
   
    } else {
        response.sendRedirect("index.jsp");
    }
    }
    catch(Exception e)
    {
        System.err.println(e);
    }
%>
    </body>
</html>
