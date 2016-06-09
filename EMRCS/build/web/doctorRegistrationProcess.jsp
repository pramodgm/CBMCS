<%-- 
    Document   : doctorRegistrationProcess
    Created on : 8 Jun, 2016, 11:56:19 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Registration Process</title>
    </head>
    <body>
        <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
        <%@ page import ="java.sql.*" %>
            <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            Statement pst;
            ResultSet rs,rs1;
            String DocID=request.getParameter("DocID");
            String email=request.getParameter("Email");
            String query="select * from docprofile where doctorID='"+DocID+"'"; 
            String query1="select * from docprofile where email='"+email+"'";
            pst = con.createStatement();
            rs = pst.executeQuery(query);
            rs1= pst.executeQuery(query1);
            try {
            if(rs1.next()==true || rs.next()==true)
            {    %>
            <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;"> The entered Doctor ID or email is already used.<a href="DoctorRegistration.jsp"> Click here</a> to go back...</span></div>
               <% }
} catch(SQLException s)
                {
                    String pwd=request.getParameter("Password").toString();
                    String rpwd=request.getParameter("retypePassword").toString();
                    if(!pwd.equals(rpwd))
                    {
                        %>
            <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;"> The entered passwords do not match<a href="DoctorRegistration.jsp"> Click here</a> to go back...</span></div>
               <%
                   
                    }
else {
                    String name=request.getParameter("Name").toString();
                    String aadhar=request.getParameter("Aadhar").toString();
                    String address=request.getParameter("Address").toString();
                    String phone1=request.getParameter("PhoneNumber1").toString();
                    String closeTime=request.getParameter("CloseTime").toString();
                    String phone2=request.getParameter("PhoneNumber2").toString();
                    String openTime=request.getParameter("OpenTime").toString();
                    String qualification=request.getParameter("Qualification").toString();
                    String aOfExp=request.getParameter("AreaOfExpertise").toString();
                    String discipline=request.getParameter("Discipline").toString();
                    String gender=request.getParameter("Gender").toString();
                    query="INSERT INTO `docprofile` (`doctorID`, `dName`, `Gender`, `Aadhar`, `ClinicAddress`, `phone1`, `phone2`, `OpenTime`, `CloseTime`, `Qualification`, `AreaOfExpertise`, `Discipline`, `email`, `password`)"
                                    + " VALUES ('"+DocID+"', '"+name+"', '"+gender+"','"+aadhar+"', '"+address+"', '"+phone1+"', '"+phone2+"', '"+openTime+"', '"+closeTime+"', '"+qualification+"', '"+aOfExp+"', '"+discipline+"', '"+email+"', '"+pwd+"')";
                    PreparedStatement pst1 = con.prepareStatement(query);
                    int n=pst1.executeUpdate();
                if(n==1){%>
            <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;"> Registration Completed Successfully<a href="DoctorLogin.jsp"> Click here</a> to go login...</span></div>
               <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't complete Registration please try after some time<a href="index.jsp"> Click here</a> to go back...</span></div>
            <%}                
                 exit: con.close();
}}%>
    </body>
</html>
