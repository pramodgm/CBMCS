<%-- 
    Document   : patientSettings
    Created on : 28 Apr, 2016, 8:13:29 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Settings</title>
<link href="../css/patientSettings.css" rel="stylesheet">
</head>
<body>
    <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:4;">
<div id="wb_Text1" style="position:absolute;left:21px;top:123px;width:263px;height:38px;z-index:5;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:27px;">Settings</span></div>
<table style="position:absolute;left:444px;top:219px;width:403px;height:262px;z-index:6;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> Current Password</span></td>
<td class="cell1"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> New Password</span></td>
<td class="cell1"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> Renter Password</span></td>
<td class="cell1"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> </span></td>
<td class="cell1"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> </span></td>
<td class="cell1"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"> </span></td>
</tr>
</table>
<div id="wb_Form1" style="position:absolute;left:581px;top:204px;width:265px;height:278px;z-index:7;">
<form name="ChangePassword" method="get" action="patientChangePassword.jsp" enctype="text/plain" id="Form1">
    <input type="password" id="Editbox1" style="position:absolute;left:15px;top:27px;width:187px;height:20px;line-height:20px;z-index:0;" name="currentpassword" value="">
    <input type="password" id="Editbox2" style="position:absolute;left:15px;top:72px;width:187px;height:20px;line-height:20px;z-index:1;" name="newpassword" value="">
    <input type="password" id="Editbox3" style="position:absolute;left:15px;top:108px;width:187px;height:20px;line-height:20px;z-index:2;" name="retypepassword" value="">
<input type="submit" id="Button1" name="Change Password" value="Change Password" style="position:absolute;left:37px;top:157px;width:134px;height:25px;z-index:3;">
</form>
</div>
<table style="position:absolute;left:21px;top:204px;width:171px;height:195px;z-index:8;" id="Table3">
<tr>
<td class="cell0">&nbsp;</td>
</tr>
<tr>
    <td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="patientProfile.jsp">Patient Profile</a></strong></span></td>
</tr>
<tr>
<td class="cell0">&nbsp;</td>
</tr>
<tr>
<td class="cell2">&nbsp;</td>
</tr>
</table>
<div id="wb_Text2" style="position:absolute;left:1103px;top:108px;width:263px;height:26px;z-index:9;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:19px;"><a href="patientLogout.jsp">Logout</a></span></div>
</body>
</html>