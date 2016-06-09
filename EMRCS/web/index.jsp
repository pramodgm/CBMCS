<%-- 
    Document   : HomePage
    Created on : 23 Jan, 2016, 5:10:05 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cloud Based Medical Consultation</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script src="bootstrap/js/bootstrap.min.js"></script>
    <link href="EMRMCS.css" rel="stylesheet">
<link href="../css/HomePage.css" rel="stylesheet">
</head>
<body>
    <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<div id="wb_Text1" style="position:absolute;left:114px;top:455px;width:427px;height:198px;text-align:center;z-index:1;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:24px;">Efficient Medical Record Management And Consultation System Manages you Medical records completely Online Centralized, Accessible only by Certified Doctors, Laboratory &amp; Youself Only...</span></div>
<div id="wb_Line1" style="position:absolute;left:694px;top:104px;width:0px;height:651px;z-index:2;">
<img src="images/img0002.png" id="Line1" alt=""></div>
<div id="wb_Image1" style="position:absolute;left:206px;top:108px;width:229px;height:324px;z-index:6;">
<img src="images/doclogo.png" id="Image1" alt=""></div>
<form action="PatientLogin.jsp" method="post">
<input type="submit" id="Button1" name="PatientLogin" value="Patient Login"  style="position:absolute;left:926px;top:228px;width:276px;height:104px;z-index:3;">
</form>
<form action="DoctorLogin.jsp" method="post">
<input type="submit" id="Button2" name="DoctorLogin" value="Doctor Login"  style="position:absolute;left:926px;top:386px;width:276px;height:104px;z-index:4;">
</form>
<form action="LaboratoryLogin.jsp" method="post">
<input type="submit" id="Button3" name="LaboratoryLogin" value="Laboratory Login"  style="position:absolute;left:926px;top:533px;width:276px;height:104px;z-index:5;">
</form>
</body>
</html>
