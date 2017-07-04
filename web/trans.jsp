<%-- 
    Document   : trans
    Created on : Jun 8, 2017, 5:26:08 PM
    Author     : Admin
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
               //  String accno=request.getParameter("accno");
                   String tacc=request.getParameter("tacc");
             //  int num=Integer.parseInt(request.getParameter("num"));
           int num3=Integer.parseInt(request.getParameter("num3"));
                
                        Class.forName("com.mysql.jdbc.Driver");
                         con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
                        
                        Statement stmt = con1.createStatement();
                        ResultSet rs = stmt.executeQuery("Select balance from accountreg where accno='"+tacc+"'");
                        int a;
                        while (rs.next())
                        {
                         
                            a= rs.getInt("balance")+num3;
                            
                            System.out.println(a);
                         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
                       	PreparedStatement ps1=con.prepareStatement("update accountreg set balance=? where accno='"+tacc+"'");
                        ps1.setInt(1,a);
			ps1.executeUpdate();
			ResultSet rs1=ps1.executeQuery();
			
			if(rs1.next()){
			out.print("your balance has increase");
                        
			
                }
                
%>
            
               
                <%=rs1.getInt("a")%>
              
          
                <% }

}             catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                    }

                %>
                <%--     <%
            try{
                Connection con1, con;
                  String accno=request.getParameter("accno");
                int num=Integer.parseInt(request.getParameter("num"));
                 int num3=Integer.parseInt(request.getParameter("num3"));
          
                
                        Class.forName("com.mysql.jdbc.Driver");
                         con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
                        
                        Statement stmt = con1.createStatement();
                        ResultSet rs = stmt.executeQuery("Select * from accountreg where accno='"+session.getAttribute("accno")+"'");
                        int a=0;
                        while (rs.next())
                        {
                            a= rs.getInt("balance")-num3;
                            
                            System.out.println(a);
                         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
                       	PreparedStatement ps1=con.prepareStatement("update accountreg set balance=? where accno='"+session.getAttribute("accno")+"'");
                        ps1.setInt(1,a);
			ps1.executeUpdate();
			ResultSet rs1=ps1.executeQuery();
			
			if(rs1.next()){
			out.print("your balance has Decreases");
			
                }
                
%>
            
               
                <%=rs1.getInt("balance")%>
              
          
                <% }
}
                    catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                    }

                %>--%>
    </body>
</html>
