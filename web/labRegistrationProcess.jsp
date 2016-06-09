<%-- 
    Document   : labRegistrationProcess
    Created on : 1 May, 2016, 4:45:32 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab Registration Process</title>
    </head>
    <body>
            <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
        <%@ page import ="java.sql.*" %>
            <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            Statement pst;
            ResultSet rs,rs1;
            String labID=request.getParameter("LabID");
            String email=request.getParameter("email");
            String query="select * from labprofile where labID='"+labID+"'"; 
            String query1="select * from labprofile where email='"+email+"'";
            pst = con.createStatement();
            rs = pst.executeQuery(query);
            rs1= pst.executeQuery(query1);
            try {
            if(rs1.next()==true || rs.next()==true)
            {    %>
            <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;"> The entered Lab ID or email is already used.<a href="labRegistration.jsp"> Click here</a> to go back...</span></div>
               <% }
} catch(SQLException s)
                {
                    String pwd=request.getParameter("createPassword").toString();
                    String rpwd=request.getParameter("RetypePassword").toString();
                    if(!pwd.equals(rpwd))
                    {
                        %>
            <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;"> The entered passwords do not match<a href="labRegistration.jsp"> Click here</a> to go back...</span></div>
               <%
                   
                    }
else {
                    String name=request.getParameter("Name").toString();
                    String address=request.getParameter("Address").toString();
                    String phone1=request.getParameter("phone1").toString();
                    String closeTime=request.getParameter("CloseTime").toString();
                    String phone2=request.getParameter("Phone2").toString();
                    String openTime=request.getParameter("OpenTime").toString();
                    String owner=request.getParameter("Owner").toString();
                    String yearStarted=request.getParameter("YearStarted").toString();
                    query="INSERT INTO `labprofile` (`labID`, `lName`, `Owner`, `YearStarted`, `Address`, `phone1`, `phone2`, `OpenTime`, `CloseTime`, `email`, `password`)"
                                    + " VALUES ('"+labID+"', '"+name+"', '"+owner+"', '"+yearStarted+"', '"+address+"', '"+phone1+"', '"+phone2+"', '"+openTime+"', '"+closeTime+"', '"+email+"', '"+pwd+"')";
                    PreparedStatement pst1 = con.prepareStatement(query);
                    int n=pst1.executeUpdate();
                if(n==1){%>
            <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;"> Registration Completed Successfully<a href="LaboratoryLogin.jsp"> Click here</a> to go login...</span></div>
               <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't complete Registration please try after some time<a href="index.jsp"> Click here</a> to go back...</span></div>
            <%}                
                 exit: con.close();
}}%>
    </body>
</html>
