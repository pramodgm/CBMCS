<%-- 
    Document   : patientChangePassword
    Created on : 8 May, 2016, 8:47:45 AM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Changing Password</title>
    </head>
    <body>
            <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:4;">
        <%@ page import ="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar = session.getAttribute("aadhar").toString();
            String pass=request.getParameter("newpassword");
            String passr=request.getParameter("retypepassword");
            String passo=request.getParameter("currentpassword");
            String query="SELECT * FROM patientprofile WHERE Aadhar='"+aadhar+"'";
            pst = con.prepareStatement(query);
            ResultSet rs=pst.executeQuery();
            rs.next();
            if(rs.getString("password").equals(passo))
            {
                if(passr.equals(pass))
                {
                    query="UPDATE `patientprofile` SET `password` = '"+pass+"' WHERE `patientprofile`.`Aadhar` = '"+aadhar+"'"; 
                    pst = con.prepareStatement(query);
                    int a = pst.executeUpdate();
                    if(a==1)
                    {%>
                                            <div id="wb_Text1" style="position:absolute;left:147px;top:299px;z-index:1;text-align:left;">
                                                <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Password Changed Successfully <a href='labProfile.jsp'>click here</a> to go back to profile</span></div>
                    <%}
                    else
                    {%>
                                                                <div id="wb_Text1" style="position:absolute;left:147px;top:299px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Check your new password <a href='patientSettings.jsp'>click here</a> to go back to re-enter password</span></div>
                    <%}
                }
                else
                {%>
                    <div id="wb_Text1" style="position:absolute;left:147px;top:299px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Passwords Don not match <a href='patientSettings.jsp'>click here</a> to go back to re-enter password</span></div>
                <%}
            }
else
{%>
    <div id="wb_Text1" style="position:absolute;left:147px;top:299px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Current Password wrong <a href='patientSettings.jsp'>click here</a> to go back to re-enter password</span></div>
                        <%}
            %>
    </body>
</html>
