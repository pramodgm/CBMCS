<%-- 
    Document   : DoctorRegistration
    Created on : 8 Apr, 2016, 10:07:22 AM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Doctor Registration</title>
<link href="../css/DoctorRegistration.css" rel="stylesheet">
</head>
<body>
    <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<div id="wb_Text1" style="position:absolute;left:61px;top:108px;width:202px;height:28px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Doctor Registraion</span></div>
<form name="docRegistration" method="get" action="doctorRegistrationProcess.jsp" enctype="text/plain">
<table style="position:absolute;left:380px;top:136px;width:568px;height:769px;z-index:2;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Name</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox1" style="width:256px;height:20px;line-height:20px;z-index:5;" name="Name" value=""/></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Doctor ID</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox2" style="width:256px;height:20px;line-height:20px;z-index:6;" name="DocID" value=""/></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Gender</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <select name="Gender" size="1" id="Combobox1" style="width:99px;height:22px;z-index:16;">
<option value="MALE">Male</option>
<option value="FEMALE">Female</option>
</select></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Aadhar Number</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox4" style="width:256px;height:20px;line-height:20px;z-index:7;" name="Aadhar" value=""/></span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Clinic Address</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox5" style="width:256px;height:73px;line-height:73px;z-index:8;" name="Address" value=""/></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Open Time</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox7" style="width:256px;height:20px;line-height:20px;z-index:10;" name="OpenTime" value=""/></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Close Time</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox6" style="width:256px;height:20px;line-height:20px;z-index:9;" name="CloseTime" value=""/></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Phone Number </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox8" style="width:256px;height:20px;line-height:20px;z-index:11;" name="PhoneNumber1" value=""/></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Phone Nuber 2 </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><input type="text" id="Editbox9" style="width:256px;height:20px;line-height:20px;z-index:12;" name="PhoneNumber2" value=""/> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> E-mail</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox10" style="width:256px;height:20px;line-height:20px;z-index:13;" name="Email" value=""/></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Create Password</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><input type="password" id="Editbox11" style="width:256px;height:20px;line-height:20px;z-index:14;" name="Password" value=""/> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Re-Enter Password</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="password" id="Editbox12" style="width:256px;height:20px;line-height:20px;z-index:15;" name="retypePassword" value=""/></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Qualification</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><input type="text" id="Editbox3" style="width:256px;height:20px;line-height:20px;z-index:17;" name="Qualification" value=""> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Area Of Expertise</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <select name="AreaOfExpertise" size="1" id="Combobox2" style="width:182px;height:22px;z-index:18;">
<option value="General Physician">General Physician</option>
<option value="Neurologist">Neurologist</option>
<option value="Diabetics">Diabetics</option>
<option value="Radiologist">Radiologist</option>
<option value="Orthopedic">Orthopedic</option>
<option value="Cardiologist">Cardiologist</option>
</select></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Discipline</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><select name="Discipline" size="1" id="Combobox3" style="width:147px;height:22px;z-index:19;">
<option value="General Physician">General Physician</option>
<option value="Dentist">Dentist</option>
</select> </span></td>
</tr>
<tr>
<td class="cell4">&nbsp;</td>
<td class="cell5">&nbsp;</td>
</tr>
</table>
    
<input type="submit" id="Button1" name="" value="Submit" style="position:absolute;left:414px;top:870px;width:96px;height:25px;z-index:3;"/>
<input type="reset" id="Button2" name="Reset" value="Reset" style="position:absolute;left:574px;top:870px;width:96px;height:25px;z-index:4;"/>
</form>
<div id="wb_Text2" style="position:absolute;left:992px;top:151px;width:308px;height:18px;z-index:21;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;"><a href="DoctorLogin.jsp">Already a registered&nbsp; Doctor click here to login...</a></span></div>
</body>
</html>