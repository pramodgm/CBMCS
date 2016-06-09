<%-- 
    Document   : plogin
    Created on : 27 Feb, 2016, 6:41:55 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authenticating....</title>
    </head>
    <body>
        <%@ page import ="java.sql.*" %>
        <%
            String userid = request.getParameter("UserName");    
            String pass = request.getParameter("Password");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String query="select * from patientprofile where email='"+userid+"' and password='"+pass+"'"; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            if(rs.next()!=false)
            {
                    try{
                        session.setAttribute("aadhar", rs.getString("Aadhar"));
                        session.setAttribute("loginType", "patient");
                        out.println("Welcome " + rs.getString("Name"));
                        response.sendRedirect("patientProfile.jsp");
                        }
                        catch(SQLException e)
                        {
                            out.println(e);
                        }
            }
            else
                out.println("Invalid password <a href='index.jsp'>try again</a>");
        %>
    </body>
</html>
