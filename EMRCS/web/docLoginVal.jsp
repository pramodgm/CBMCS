<%-- 
    Document   : login
    Created on : 16 Feb, 2016, 7:16:54 PM
    Author     : Pramod
--%>

<%@page import="javax.mail.SendFailedException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authenticating....</title>
    </head>
    <body>
        <%@ page import ="java.sql.*" %>
        <%@page import="emailx.sendMail.sendEmail" %>
        <%
            String userid = request.getParameter("UserName");    
            String pass = request.getParameter("Password");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs","root", "");
            //Connection con = DriverManager.getConnection("jdbc:mysql://127.12.151.130:3306/cloudbasedmedicalconsultation","adminZXH6Hxu", "qjzBubwtA_RH");
            PreparedStatement pst;
            String query="select * from docprofile where email='"+userid+"' and password='"+pass+"'"; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
             rs.next();
                    try{
                        session.setAttribute("userid", rs.getString("doctorID"));
                        session.setAttribute("loginType", "doctor");
                        out.println("welcome " + rs.getString("dName"));
                       /* try{
                        sendEmail.sendEmailUsingGmail("pramodgm619@gmail.com","Login Successfull");
                        }
                        catch(Exception e)
                        {   log(e.toString());
                        }*/
                        response.sendRedirect("doctorProfile.jsp");
                        }
                        catch(SQLException e)
                        {
                            out.println(e);
                           // sendEmail.sendEmailUsingGmail("pramodgm619@gmail.com","Somebody tried to access your account if it was not yu please writeback to us. Thank you");
                            out.println("Invalid password <a href='index.jsp'>try again</a>");
                        }
        %>
    </body>
</html>
