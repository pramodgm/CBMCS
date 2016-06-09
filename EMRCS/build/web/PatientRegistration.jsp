<%-- 
    Document   : PatientRegistration
    Created on : 1 May, 2016, 4:49:02 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Registration</title>
<link href="Patient_Registration.css" rel="stylesheet">
</head>
<body>
    <a href="index.jsp"><img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;"></a>
<div id="wb_Text1" style="position:absolute;left:61px;top:108px;width:202px;height:28px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Patient Registraion</span></div>
    <form name="patientRegistration" action="patientRegistrationProcess.jsp" method="get">
<table style="position:absolute;left:380px;top:136px;width:568px;height:419px;z-index:2;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Name</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox1" style="width:256px;height:20px;line-height:20px;z-index:5;" name="Name" value=""></span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Gender</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <select name="Gender" size="1" id="Combobox1" style="width:99px;height:22px;z-index:13;">
<option value="MALE">Male</option>
<option value="FEMALE">Female</option>
</select></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Aadhar Number</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><input type="text" id="Editbox4" style=" width:256px;height:20px;line-height:20px;z-index:6;" name="Aadhar" value=""> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Date of Birth</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox10" style="width:256px;height:20px;line-height:20px;z-index:12;" name="DOB" value=""></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Blood Group</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <select name="Blood" size="1" id="Combobox1" style="width:99px;height:22px;z-index:13;">
            <option value="A+">A +ve</option>
            <option value="A-">A -ve</option>
            <option value="B+">B +ve</option>
            <option value="B-">B -ve</option>
            <option value="AB+">AB +ve</option>
            <option value="AB-">AB -ve</option>
            <option value="O+">O +ve</option>
<option value="O-">O -ve</option>
</select></span></td>
</tr>
<tr>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Address</span></td>
<td class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><input type="text" id="Editbox5" style="width:256px;height:73px;line-height:73px;z-index:7;" name="Address" value=""> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Phone Number </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox6" style="width:256px;height:20px;line-height:20px;z-index:8;" name="phone1" value=""></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Phone Nuber 2 </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="text" id="Editbox7" style="width:256px;height:20px;line-height:20px;z-index:9;" name="Phone2" value=""></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> E-mail</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><input type="text" id="Editbox8" style="width:256px;height:20px;line-height:20px;z-index:10;" name="Email" value=""> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Create Password</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="password" id="Editbox9" style="width:256px;height:20px;line-height:20px;z-index:11;" name="CreatePassword" value="">
</span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Re-Enter Password</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <input type="password" id="Editbox10" style="width:256px;height:20px;line-height:20px;z-index:12;" name="ReEnterPassword" value=""></span></td>
</tr>

</table>
    
<input type="submit" id="Button1" name="" value="Submit" style="position:absolute;left:456px;top:583px;width:96px;height:25px;z-index:3;">
<input type="reset" id="Button2" name="Reset" value="Reset" style="position:absolute;left:603px;top:583px;width:96px;height:25px;z-index:4;">
</form>
<div id="wb_Text2" style="position:absolute;left:992px;top:151px;width:308px;height:18px;z-index:14;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;"><a href="PatientLogin.jsp">Already a registered click here to login...</a></span></div>
</body>
</html>
