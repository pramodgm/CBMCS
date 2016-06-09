<%-- 
    Document   : SerologyUpload
    Created on : 10 May, 2016, 8:37:55 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/SerologyUpload.css" rel="stylesheet">
        <title> Serology Upload </title>
</head>
<body>
    <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<div id="wb_Text1" style="position:absolute;left:15px;top:117px;width:342px;height:28px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Serology Report</span></div>
<table style="position:absolute;left:197px;top:117px;width:806px;height:70px;z-index:2;" id="Table2">
<tr>
<td class="cell0"><%@ page import ="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar=session.getAttribute("aadhar").toString();
            String query="select * from patientprofile where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
    rs.next(); %><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Patient Name</strong></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("Name") %> </span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Date</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Refered By </strong></span></td>
<td class="cell0"><% PreparedStatement pstd;
            String queryd="select * from docprofile where doctorID="+session.getAttribute("userid").toString(); 
            pstd = con.prepareStatement(queryd);
            ResultSet rsd = pstd.executeQuery();
                            rsd.next();%><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rsd.getString("dName")%> </span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Lab Name</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=session.getAttribute("labid") %> </span></td>
</tr>
</table>
<table style="position:absolute;left:15px;top:195px;width:171px;height:246px;z-index:3;" id="Table3">
<tr>
<td class="cell0">&nbsp;</td>
</tr>
<tr>
    <td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="patientProfile.jsp"> Patient Profile</a></strong></span></td>
</tr>
<tr>
    <td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="doctorProfile.jsp">Doctor Profile</a></strong></span></td>
</tr>
<tr>
    <td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="labProfile.jsp"> Lab Profile</a></strong></span></td>
</tr>
<tr>
    <td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="CheckList_lab.jsp">View Checklist</a></strong></span></td>
</tr>
</table>
<table style="position:absolute;left:197px;top:195px;width:606px;height:379px;z-index:4;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>Test</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> RESULT</strong></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">WIDAL</span></td>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> S. Typhi &quot;O&quot;</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> S. Typhi &quot;H&quot;</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> S. Para Typhi &quot;AH&quot;</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> S. Para Typhi &quot;BH&quot;</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> R.A Factor</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> A.S.O</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> C.R.P</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> V.D.R.L</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> H.I.V &amp; II</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Hbs Ag</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> MONOTOUX TEXT</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
</table>
    <form method="get" action="SerologyUploadVal.jsp">
<input type="text" id="Editbox5" style="position:absolute;left:404px;top:228px;width:386px;height:20px;line-height:20px;z-index:5;" name="WIDAL" value="">
<input type="submit" id="Button1" name="" value="Submit" style="position:absolute;left:310px;top:588px;width:96px;height:25px;z-index:6;">
<input type="reset" id="Button2" name="" value="Reset" style="position:absolute;left:433px;top:589px;width:96px;height:25px;z-index:7;">
<input type="text" id="Editbox6" style="position:absolute;left:404px;top:257px;width:386px;height:20px;line-height:20px;z-index:8;" name="sTyphiO" value="">
<input type="text" id="Editbox7" style="position:absolute;left:404px;top:286px;width:386px;height:20px;line-height:20px;z-index:9;" name="sTyphiH" value="">
<input type="text" id="Editbox8" style="position:absolute;left:404px;top:314px;width:386px;height:20px;line-height:20px;z-index:10;" name="sPTyphiAH" value="">
<input type="text" id="Editbox9" style="position:absolute;left:404px;top:344px;width:386px;height:20px;line-height:20px;z-index:11;" name="sPTyphiBH" value="">
<input type="text" id="Editbox10" style="position:absolute;left:406px;top:430px;width:386px;height:20px;line-height:20px;z-index:12;" name="CRP" value="">
<input type="text" id="Editbox11" style="position:absolute;left:404px;top:460px;width:386px;height:20px;line-height:20px;z-index:13;" name="VDRL" value="">
<input type="text" id="Editbox12" style="position:absolute;left:404px;top:489px;width:386px;height:20px;line-height:20px;z-index:14;" name="HIV" value="">
<input type="text" id="Editbox13" style="position:absolute;left:404px;top:518px;width:386px;height:20px;line-height:20px;z-index:15;" name="Hbs" value="">
<input type="text" id="Editbox14" style="position:absolute;left:404px;top:547px;width:386px;height:20px;line-height:20px;z-index:16;" name="MT" value="">
<input type="text" id="Editbox15" style="position:absolute;left:404px;top:402px;width:386px;height:20px;line-height:20px;z-index:17;" name="ASO" value="">
<input type="text" id="Editbox16" style="position:absolute;left:404px;top:373px;width:386px;height:20px;line-height:20px;z-index:18;" name="RAF" value="">
    </form>
</body>
</html>