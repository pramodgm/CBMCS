<%-- 
    Document   : CardiologyUpload
    Created on : 11 May, 2016, 12:33:20 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                 <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cardiology Upload</title>
<link href="CardiologyUpload.css" rel="stylesheet">
</head>
<body>
    <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<div id="wb_Text1" style="position:absolute;left:15px;top:117px;width:342px;height:28px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Cardiology Report</span></div>
<table style="position:absolute;left:197px;top:117px;width:878px;height:70px;z-index:2;" id="Table2">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Patient Name</strong></span></td>
<td class="cell1"><%@ page import ="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar=session.getAttribute("aadhar").toString();
            String query="select * from patientprofile where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
    rs.next(); %><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("Name") %></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Date</strong></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Refered By </strong></span></td>
<td class="cell1"><% PreparedStatement pstd;
            String queryd="select * from docprofile where doctorID="+session.getAttribute("userid").toString(); 
            pstd = con.prepareStatement(queryd);
            ResultSet rsd = pstd.executeQuery();
                            rsd.next();%><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rsd.getString("dName")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Lab Name</strong></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=session.getAttribute("labid") %></span></td>
</tr>
</table>
<table style="position:absolute;left:15px;top:195px;width:171px;height:147px;z-index:3;" id="Table3">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="patientProfile.jsp"> Patient Profile</a></strong></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="doctorProfile.jsp">Doctor Profile</a></strong></span></td>
</tr>
<tr>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="labProfile.jsp">Laboratory Profile</a></strong></span></td>
</tr>
<tr>
    <td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="CheckList_lab.jsp">View Checklist</a></strong></span></td>
</tr>
</table>
<table style="position:absolute;left:197px;top:278px;width:284px;height:283px;z-index:4;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">IVSd</span></td>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">IVSFS</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">IVSs</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">AoRoot</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LA D</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LA/Ao</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVVdCub</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVVd Teich</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVIDd</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
</table>
<table style="position:absolute;left:479px;top:278px;width:296px;height:347px;z-index:5;" id="Table4">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">%FS</span></td>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">EFcub</span></td>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">EF Teich</span></td>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVVsCub</span></td>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVVs Teich</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVIDs</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">SVcub</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">SV Teich</span></td>
<td class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVPWd</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">%LVPW</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVPWs</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
</table>
<table style="position:absolute;left:773px;top:278px;width:284px;height:128px;z-index:6;" id="Table5">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>Test</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> RESULT</strong></span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVd MassASE</span></td>
<td class="cell3">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVs MassASE</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Ao/LA</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
</table>
<table style="position:absolute;left:1055px;top:278px;width:284px;height:95px;z-index:7;" id="Table6">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>Test</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> RESULT</strong></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVd MassPENN</span></td>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVs MassPENN</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
</table>
<div id="wb_Text2" style="position:absolute;left:197px;top:189px;width:61px;height:25px;z-index:8;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><strong>2D</strong></span></div>
<div id="wb_Text3" style="position:absolute;left:197px;top:253px;width:106px;height:23px;z-index:9;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;"><strong>M-Mode</strong></span></div>
<table style="position:absolute;left:197px;top:214px;width:277px;height:39px;z-index:10;" id="Table7">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> RAPs</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
</table>
<div id="wb_Text4" style="position:absolute;left:197px;top:633px;width:106px;height:23px;z-index:11;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;"><strong>Doppler</strong></span></div>
<table style="position:absolute;left:197px;top:656px;width:1150px;height:116px;z-index:12;" id="Table8">
<tr>
<td colspan="2" class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">&nbsp; AV</span></td>
<td colspan="2" class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">&nbsp; MV</span></td>
<td colspan="2" class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">&nbsp; TV</span></td>
<td colspan="2" class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">&nbsp; PV</span></td>
</tr>
<tr>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> LVOTpeakV</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> MVpeak A</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> TVpeak A</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> PVpeakPG</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> LVOTpeakPG</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> MC E/A</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> TV E/A</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> PVpeakV</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> MVpeak E</span></td>
<td class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> TVpeak E</span></td>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td colspan="2" class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><strong>&nbsp; Pulm V</strong></span></td>
</tr>
</table>
<form action="CardiologyUploadVal.jsp" method="get">
<input type="submit" id="Button1" name="" value="Submit" style="position:absolute;left:313px;top:1084px;width:96px;height:25px;z-index:13;">
<input type="reset" id="Button2" name="" value="Reset" style="position:absolute;left:481px;top:1084px;width:96px;height:25px;z-index:14;">
<input type="text" id="Editbox1" style="position:absolute;left:337px;top:221px;width:133px;height:20px;line-height:20px;z-index:15;" name="RAP" value="">
<input type="text" id="Editbox2" style="position:absolute;left:339px;top:282px;width:133px;height:20px;line-height:20px;z-index:16;" name="IVSD" value="">
<input type="text" id="Editbox3" style="position:absolute;left:337px;top:313px;width:133px;height:20px;line-height:20px;z-index:17;" name="IVSFS" value="">
<input type="text" id="Editbox4" style="position:absolute;left:337px;top:345px;width:133px;height:20px;line-height:20px;z-index:18;" name="IVSS" value="">
<input type="text" id="Editbox5" style="position:absolute;left:337px;top:376px;width:133px;height:20px;line-height:20px;z-index:19;" name="AoRoot" value="">
<input type="text" id="Editbox6" style="position:absolute;left:337px;top:408px;width:133px;height:20px;line-height:20px;z-index:20;" name="LAD" value="">
<input type="text" id="Editbox7" style="position:absolute;left:337px;top:440px;width:133px;height:20px;line-height:20px;z-index:21;" name="LAAo" value="">
<input type="text" id="Editbox8" style="position:absolute;left:337px;top:471px;width:133px;height:20px;line-height:20px;z-index:22;" name="LVVDC" value="">
<input type="text" id="Editbox9" style="position:absolute;left:337px;top:501px;width:133px;height:20px;line-height:20px;z-index:23;" name="LVVDT" value="">
<input type="text" id="Editbox10" style="position:absolute;left:337px;top:533px;width:133px;height:20px;line-height:20px;z-index:24;" name="LVID" value="">
<input type="text" id="Editbox11" style="position:absolute;left:630px;top:284px;width:133px;height:20px;line-height:20px;z-index:25;" name="FS" value="">
<input type="text" id="Editbox12" style="position:absolute;left:630px;top:313px;width:133px;height:20px;line-height:20px;z-index:26;" name="EFC" value="">
<input type="text" id="Editbox13" style="position:absolute;left:630px;top:345px;width:133px;height:20px;line-height:20px;z-index:27;" name="EFT" value="">
<input type="text" id="Editbox14" style="position:absolute;left:630px;top:375px;width:133px;height:20px;line-height:20px;z-index:28;" name="LVVSC" value="">
<input type="text" id="Editbox15" style="position:absolute;left:630px;top:407px;width:133px;height:20px;line-height:20px;z-index:29;" name="LVVST" value="">
<input type="text" id="Editbox16" style="position:absolute;left:630px;top:438px;width:133px;height:20px;line-height:20px;z-index:30;" name="LVIDS" value="">
<input type="text" id="Editbox17" style="position:absolute;left:630px;top:469px;width:133px;height:20px;line-height:20px;z-index:31;" name="SVC" value="">
<input type="text" id="Editbox18" style="position:absolute;left:630px;top:502px;width:133px;height:20px;line-height:20px;z-index:32;" name="SVT" value="">
<input type="text" id="Editbox19" style="position:absolute;left:630px;top:535px;width:133px;height:20px;line-height:20px;z-index:33;" name="LVPWD" value="">
<input type="text" id="Editbox20" style="position:absolute;left:630px;top:565px;width:133px;height:20px;line-height:20px;z-index:34;" name="LVPW" value="">
<input type="text" id="Editbox21" style="position:absolute;left:630px;top:596px;width:133px;height:20px;line-height:20px;z-index:35;" name="LVPWS" value="">
<input type="text" id="Editbox22" style="position:absolute;left:916px;top:314px;width:133px;height:20px;line-height:20px;z-index:36;" name="LVDM" value="">
<input type="text" id="Editbox23" style="position:absolute;left:916px;top:345px;width:133px;height:20px;line-height:20px;z-index:37;" name="LVSM" value="">
<input type="text" id="Editbox24" style="position:absolute;left:916px;top:376px;width:133px;height:20px;line-height:20px;z-index:38;" name="AoLA" value="">
<input type="text" id="Editbox27" style="position:absolute;left:1198px;top:313px;width:133px;height:20px;line-height:20px;z-index:39;" name="LVDMP" value="">
<input type="text" id="Editbox28" style="position:absolute;left:1198px;top:345px;width:133px;height:20px;line-height:20px;z-index:40;" name="LVSMP" value="">
<input type="text" id="Editbox25" style="position:absolute;left:342px;top:689px;width:133px;height:20px;line-height:20px;z-index:41;" name="LVOTPV" value="">
<input type="text" id="Editbox26" style="position:absolute;left:342px;top:715px;width:133px;height:20px;line-height:20px;z-index:42;" name="LVOTPG" value="">
<input type="text" id="Editbox29" style="position:absolute;left:628px;top:689px;width:133px;height:20px;line-height:20px;z-index:43;" name="MVPA" value="">
<input type="text" id="Editbox30" style="position:absolute;left:628px;top:715px;width:133px;height:20px;line-height:20px;z-index:44;" name="MCEA" value="">
<input type="text" id="Editbox31" style="position:absolute;left:628px;top:744px;width:133px;height:20px;line-height:20px;z-index:45;" name="MVPE" value="">
<input type="text" id="Editbox32" style="position:absolute;left:916px;top:689px;width:133px;height:20px;line-height:20px;z-index:46;" name="TVPA" value="">
<input type="text" id="Editbox33" style="position:absolute;left:916px;top:715px;width:133px;height:20px;line-height:20px;z-index:47;" name="TVEA" value="">
<input type="text" id="Editbox34" style="position:absolute;left:1204px;top:689px;width:133px;height:20px;line-height:20px;z-index:48;" name="PVPG" value="">
<input type="text" id="Editbox35" style="position:absolute;left:1204px;top:715px;width:133px;height:20px;line-height:20px;z-index:49;" name="PVPV" value="">
<div id="wb_Text5" style="position:absolute;left:201px;top:782px;width:164px;height:23px;z-index:50;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;">Referal Reason</span></div>
<textarea name="ReferalReason" id="TextArea1" style="position:absolute;left:202px;top:802px;width:825px;height:56px;z-index:51;" rows="2" cols="134" maxlength="50"></textarea>
<div id="wb_Text6" style="position:absolute;left:202px;top:860px;width:164px;height:23px;z-index:52;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;">Diagonosis</span></div>
<textarea name="Diagonosis" id="TextArea2" style="position:absolute;left:202px;top:883px;width:825px;height:56px;z-index:53;" rows="2" cols="134" maxlength="50"></textarea>
<div id="wb_Text7" style="position:absolute;left:202px;top:941px;width:164px;height:23px;z-index:54;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;">Comments</span></div>
<textarea name="Comments" id="TextArea3" style="position:absolute;left:201px;top:964px;width:825px;height:56px;z-index:55;" rows="2" cols="134" maxlength="50"></textarea>
</form>
</body>
</html>