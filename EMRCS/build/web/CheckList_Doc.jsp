<%-- 
    Document   : CheckList_Doc
    Created on : 1 May, 2016, 1:28:44 PM
    Author     : Pramod
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CheckList_Doc.css" rel="stylesheet">
</head>
<body>
    <%@ page import ="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar=session.getAttribute("aadhar").toString();
            String query="select * from patientprofile where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            rs.next();
            
            PreparedStatement pstd;
            String docID=session.getAttribute("userid").toString();
            String queryd="select * from docprofile where doctorID="+docID; 
            pstd = con.prepareStatement(queryd);
            ResultSet rsd = pstd.executeQuery();
            rsd.next();
            java.util.Date d=new java.util.Date();
            SimpleDateFormat ft=new SimpleDateFormat("dd.MM.yyyy");
%>
    <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<div id="wb_Text1" style="position:absolute;left:15px;top:117px;width:342px;height:28px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Check List</span></div>
<table style="position:absolute;left:197px;top:117px;width:402px;height:104px;z-index:2;" id="Table2">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Patient Name</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("Name")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Aadhar</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=aadhar%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Refered By </strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rsd.getString("dName")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Date</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><%=ft.format(d)%></td>
</tr>
</table>
<table style="position:absolute;left:15px;top:195px;width:171px;height:246px;z-index:3;" id="Table3">
<tr>
<td class="cell0">&nbsp;</td>
</tr>
<tr>
    <td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> <a href="patientProfile.jsp">Patient Profile</a></strong></span></td>
</tr>
<tr>
    <td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="doctorProfile.jsp">Doctor Profile</a></strong></span></td>
</tr>
<tr>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell1">&nbsp;</td>
</tr>
</table>
<table style="position:absolute;left:201px;top:270px;width:402px;height:240px;z-index:4;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong>Hematology</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong>Serology</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong>Cardiology</strong></span></td>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong>Audiology</strong></span></td>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong>LIPRO</strong></span></td>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong>Urinalysis</strong></span></td>
<td class="cell1">&nbsp;</td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:15px;line-height:19px;"><strong>Diabetes</strong></span></td>
<td class="cell1">&nbsp;</td>
</tr>
</table>
<div id="wb_Text2" style="position:absolute;left:201px;top:234px;width:504px;height:24px;z-index:5;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;">Select the list of tests to be conducted to the patient</span></div>
<form method="get" action="updateCheckList.jsp" enctype="text/plain">
<input type="checkbox" id="Checkbox1" value="Hematology" name="chklst" style="position:absolute;left:422px;top:278px;z-index:6;">
<input type="checkbox" id="Checkbox2" value="Serology" name="chklst" style="position:absolute;left:422px;top:313px;z-index:7;">
<input type="checkbox" id="Checkbox3" value="Cardiology" name="chklst" style="position:absolute;left:422px;top:347px;z-index:8;">
<input type="checkbox" id="Checkbox4" value="Audiology" name="chklst" style="position:absolute;left:422px;top:383px;z-index:9;">
<input type="checkbox" id="Checkbox5" value="LIPRO" name="chklst" style="position:absolute;left:422px;top:417px;z-index:10;">
<input type="checkbox" id="Checkbox6" value="Urinalysis" name="chklst" style="position:absolute;left:422px;top:450px;z-index:11;">
<input type="checkbox" id="Checkbox7" value="Diabetes" name="chklst" style="position:absolute;left:422px;top:482px;z-index:14;">
<input type="submit" id="Button1"  value="Submit" style="position:absolute;left:247px;top:523px;width:96px;height:25px;z-index:12;">
<input type="reset" id="Button2"  value="Reset" style="position:absolute;left:398px;top:523px;width:96px;height:25px;z-index:13;">
</form>
</body>
</html>