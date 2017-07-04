<%-- 
    Document   : login
    Created on : Jun 7, 2017, 1:05:38 PM
    Author     : Administrator
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        
        <%
            try{
    String accno = request.getParameter("accno");
   
    String branch = request.getParameter("branch");
     String fname = request.getParameter("fname");
    String pass = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
   rs = st.executeQuery("select * from accountreg where accno='" + accno + "' and pass='" + pass + "'");
    if (rs.next()) {
        session.setAttribute("accno", accno);
        out.println("welcome " + accno);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("dashborad.jsp");
    } else {
        out.println("Invalid password plzz register your self<a href='reg.jsp'>try again</a>");
    }
            }
            catch( Exception e){
             System.out.println(e);
            }
        
        
        %>
    </body>
</html>
