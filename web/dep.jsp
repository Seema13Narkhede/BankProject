<%-- 
    Document   : dep
    Created on : Jun 7, 2017, 2:28:39 PM
    Author     : Administrator
--%>

<%@page import="java.sql.PreparedStatement"%>
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
                Connection con1, con;
                  String accno=request.getParameter("accno");
                int num=Integer.parseInt(request.getParameter("num"));
          
                
                        Class.forName("com.mysql.jdbc.Driver");
                         con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
                        
                        Statement stmt = con1.createStatement();
                        ResultSet rs = stmt.executeQuery("Select * from accountreg where accno='"+session.getAttribute("accno")+"'");
                        int a=0;
                        while (rs.next())
                        {
                          //  int s=rs.getInt("balance");
                            a= rs.getInt("balance")+num;
                            
                            System.out.println(a);
                         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
                       	PreparedStatement ps1=con.prepareStatement("update accountreg set balance=? where accno='"+session.getAttribute("accno")+"'");
                        ps1.setInt(1,a);
			ps1.executeUpdate();
			ResultSet rs1=ps1.executeQuery();
			
			if(rs1.next()){
                            response.sendRedirect("dashboard.jsp");
			out.print("your balance has increase");
			
                }
                
%>
            
               
                <%=rs1.getInt("balance")%>
              
          
                <% }
}
                    catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                    }

                %>
        
  
    </body>
</html>
