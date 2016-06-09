<%-- 
    Document   : Cardiology_Report
    Created on : 27 Apr, 2016, 10:28:55 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cardiology Report</title>
                        <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<link href="../css/Cardiology_Report.css" rel="stylesheet">
</head>
<body>
<img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<%@ page import ="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar = session.getAttribute("aadhar").toString();
            String query="select * from cardiology where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            if(rs.next())
            {
                if(!session.getAttribute("loginType").equals("doctor"))
                        session.setAttribute("userid",rs.getString("DocID"));
                session.setAttribute("labid",rs.getString("LabID"));
%>
<script type="text/javascript">
    $(document).ready(function(){
        
            var typ="${sessionScope.loginType}";
            if(typ==="doctor")
            {
                
                $("#profileHideDoc").hide();
                
            }
        });
</script>
<div id="wb_Text1" style="position:absolute;left:15px;top:117px;width:342px;height:28px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Cardiology Report</span></div>
<table style="position:absolute;left:197px;top:117px;width:878px;height:70px;z-index:2;" id="Table2">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Patient Name</strong></span></td>
<td class="cell1"><% PreparedStatement pstp;
            String queryp="select * from patientprofile where Aadhar="+aadhar; 
            pstp = con.prepareStatement(queryp);
            ResultSet rsp = pstp.executeQuery();
            rsp.next();%><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rsp.getString("Name")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Date</strong></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("DateOfTest")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Refered By </strong></span></td>
<td class="cell1"><% PreparedStatement pstd;
            String queryd="select * from docprofile where doctorID="+rs.getString("DocID"); 
            pstd = con.prepareStatement(queryd);
            ResultSet rsd = pstd.executeQuery();
            rsd.next();%> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">  <%=rsd.getString("dName")%> </span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Lab Name</strong></span></td>
<td class="cell2"><% PreparedStatement pstl;
            String queryl="select * from labprofile where labID='"+rs.getString("LabID")+"'"; 
            pstl = con.prepareStatement(queryl);
            ResultSet rsl = pstl.executeQuery();
                        rsl.next();%> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">  <%=rsl.getString("lName")%> </span></td>
</tr>
</table>
<table style="position:absolute;left:15px;top:195px;width:171px;height:147px;z-index:3;" id="Table3">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="patientProfile.jsp">Patient Profile</a></strong></span></td>
</tr>
<tr id="profileHideDoc">
    <td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="doctorProfile.jsp">Doctor Profile</a></strong></span></td>
</tr>
<tr>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> <a href="labProfile.jsp">Lab Profile</a></strong></span></td>
</tr>
</table>
<table style="position:absolute;left:197px;top:278px;width:284px;height:283px;z-index:4;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">IVSd</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("IVSD")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">IVSFS</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("IVSFS")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">IVSs</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("IVSS")%> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">AoRoot</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("AOROOT")%> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LA D</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LAD")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LA/Ao</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LAAO")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVVdCub</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVVDCUB")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVVd Teich</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVVDTEICH")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVIDd</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVIDD")%></span></td>
</tr>
</table>
<table style="position:absolute;left:479px;top:278px;width:296px;height:347px;z-index:5;" id="Table4">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">%FS</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("%FS")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">EFcub</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("EFCUD")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">EF Teich</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("EFTEICH")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVVsCub</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVVSCUB")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVVs Teich</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVVSTEICH")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVIDs</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVIDS")%></span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">SVcub</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("SVCUB")%></span></td>
</tr>
<tr>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">SV Teich</span></td>
<td class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("SVTEICH")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVPWd</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("LVPWD")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">%LVPW</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("%LVPW")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVPWs</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVPWS")%></span></td>
</tr>
</table>
<table style="position:absolute;left:773px;top:278px;width:284px;height:190px;z-index:6;" id="Table5">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>Test</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> RESULT</strong></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVd MassASE</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVD")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVs MassASE</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVS")%></span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Ao/LA</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("AOLA")%></span></td>
</tr>
</table>
<table style="position:absolute;left:1055px;top:278px;width:284px;height:95px;z-index:7;" id="Table6">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>Test</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> RESULT</strong></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVd MassPENN</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVDMASSPENN")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">LVs MassPENN</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVSNASSPENN")%></span></td>
</tr>
</table>
<div id="wb_Text2" style="position:absolute;left:197px;top:199px;width:61px;height:25px;z-index:8;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><strong>2D</strong></span></div>
<div id="wb_Text3" style="position:absolute;left:197px;top:253px;width:106px;height:23px;z-index:9;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;"><strong>M-Mode</strong></span></div>
<table style="position:absolute;left:197px;top:225px;width:277px;height:24px;z-index:10;" id="Table7">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> RAPs</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("RAP")%> </span></td>
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
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVOTV")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> MVpeak A</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("MVA")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> TVpeak A</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("TVA")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> PVpeakPG</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("PVPG")%></span></td>
</tr>
<tr>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> LVOTpeakPG</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LVOTPG")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> MC E/A</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("MCEA")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> TV E/A</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("TVEA")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> PVpeakV</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("PVV")%></span></td>
</tr>
<tr>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> MVpeak E</span></td>
<td class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("MVE")%></span></td>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> TVpeak E</span></td>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("TVE")%></span></td>
<td colspan="2" class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><strong>&nbsp; Pulm V</strong></span></td>
</tr>
</table>
<!-- Comments -->
<div id="Html1" style="position:absolute;left:197px;top:788px;width:1150px;height:146px;z-index:13">
<p><b>Referal Reason:</b></p><br/>
<div><p><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("ReferalReason")%></span></p></div>
<p><b>Diagnosis:</b></p><br/>
<div><p><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("Diagnosis")%></span></p></div>
<p><b>Comments:</b></p><br/>
<div><p><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("Comments")%></span></p></div></div>
<%}
    else
{%>
    <div id="wb_Text1" style="position:absolute;left:147px;top:299px;z-index:1;text-align:left;">
        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Selected Report for the following patient is not available <a href='patientProfile.jsp'>click here</a> to go back and view an other record</span></div>
<%}%>
</body>
</html>