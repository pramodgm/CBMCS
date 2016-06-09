<%-- 
    Document   : PatientLogin
    Created on : 23 Jan, 2016, 5:13:09 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Login</title>
<link href="../css/PatientLogin.css" rel="stylesheet">
</head>
<body>
<div id="wb_Form1" style="position:absolute;left:430px;top:202px;width:507px;height:383px;z-index:6;">
<form name="Form1" method="POST" action="patientLoginVal.jsp"  id="Form1">
<div id="wb_Text1" style="position:absolute;left:14px;top:17px;width:448px;height:66px;text-align:center;z-index:0;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:24px;">To view the details of your medical record Login here...</span></div>
<input type="text" id="Editbox1" style="position:absolute;left:191px;top:132px;width:120px;height:20px;line-height:20px;z-index:1;" name="UserName" value="" maxlength="30">
<input type="password" id="Editbox2" style="position:absolute;left:191px;top:174px;width:120px;height:20px;line-height:20px;z-index:2;" name="Password" value="" maxlength="15">
<div id="wb_Text2" style="position:absolute;left:85px;top:132px;width:80px;height:72px;z-index:3;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;">Email ID<br><br><br>Password</span></div>
<input type="submit" id="Button1" name="PatientLogin" value="Login" style="position:absolute;left:116px;top:236px;width:96px;height:25px;z-index:4;">
<input type="reset" id="Button2" name="Reset" value="Reset" style="position:absolute;left:252px;top:236px;width:96px;height:25px;z-index:5;">
</form>
</div>
        <a href="index.jsp"><img src="images/banner.jpg" id="Banner1" alt="Efficient Medical Record Management &amp; Consultation System" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:7;"></a>
<div id="wb_Text3" style="position:absolute;left:85px;top:305px;width:328px;height:16px;z-index:6;text-align:left;">
<a href="PatientRegistration.jsp"> Not a Member yet Click Here...</a></div></body>

</html>
