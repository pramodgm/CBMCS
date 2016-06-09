<%-- 
    Document   : labRegistration
    Created on : 1 May, 2016, 4:20:15 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab Registration</title>
<link href="Lab_Registrstion.css" rel="stylesheet">
</head>
<body>
    <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<div id="wb_Text1" style="position:absolute;left:61px;top:108px;width:230px;height:28px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Laboratory Registraion</span></div>
<form method="get" action="labRegistrationProcess.jsp" name="labRegistration">
<table style="position:absolute;left:380px;top:136px;width:568px;height:597px;z-index:2;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Name</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox1" style="width:256px;height:20px;line-height:20px;z-index:5;" name="Name" value=""></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Lab ID</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox2" style="width:256px;height:20px;line-height:20px;z-index:6;" name="LabID" value=""></span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Owner</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><input type="text" id="Editbox3" style="width:256px;height:20px;line-height:20px;z-index:17;" name="Owner" value=""> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Year Started</span></td>
<td class="cell3"><input type="text" id="Editbox4" style="width:256px;height:20px;line-height:20px;z-index:18;" name="YearStarted" value=""></td>
</tr>
<tr>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Clinic Address</span></td>
<td class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><input type="text" id="Editbox5" style="width:256px;height:73px;line-height:73px;z-index:7;" name="Address" value=""> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Open Time</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox12" style="width:256px;height:20px;line-height:20px;z-index:14;" name="OpenTime" value=""></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Close Time</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox7" style="width:256px;height:20px;line-height:20px;z-index:9;" name="CloseTime" value=""></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Phone Number </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox6" style=" width: 256px;height:20px;line-height:20px;z-index:8;" name="phone1" value=""></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Phone Nuber 2 </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox8" style="width:256px;height:20px;line-height:20px;z-index:10;" name="Phone2" value=""></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> E-mail</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="email" id="Editbox9" style="width:256px;height:20px;line-height:20px;z-index:11;" name="email" value=""></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Create Password</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><input type="password" id="Editbox10" style="width:256px;height:20px;line-height:20px;z-index:12;" name="createPassword" value=""> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Re-Enter Password</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="password" id="Editbox11" style="width:256px;height:20px;line-height:20px;z-index:13;" name="RetypePassword" value=""></span></td>
</tr>

</table>
    
<input type="submit" id="Button1" name="" value="Submit" style="position:absolute;left:414px;top:757px;width:96px;height:25px;z-index:3;">
<input type="reset" id="Button2" name="Reset" value="Reset" style="position:absolute;left:568px;top:757px;width:96px;height:25px;z-index:4;">
    </form>
<div id="wb_Text2" style="position:absolute;left:992px;top:151px;width:308px;height:18px;z-index:16;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;">Already a registered <a href="LaboratoryLogin.jsp">click here</a> to login...</span></div>
</body>
</html>