<%-- 
    Document   : LIPRO
    Created on : 27 Apr, 2016, 10:26:21 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LIPRO Test</title>
                        <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<link href="../css/LIPRO.css" rel="stylesheet">
</head>
<body>
<img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<%@ page import ="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar = session.getAttribute("aadhar").toString();
            String query="select * from lipro where Aadhar="+aadhar; 
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
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">LIPRO Reprort</span></div>
<table style="position:absolute;left:197px;top:196px;width:841px;height:474px;z-index:2;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>TEST NAME</strong></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> METHOD</strong></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>VALUE</strong></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>UNITS</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>NORMAL RANGE</strong></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Cholestrol Total</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Photometry</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("CT")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> mg%</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> 125-200</span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Cholestrol HDL-Direct</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Photometry</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("CHD")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> mg%</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> 30-65</span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Triglycerides</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Photometry</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("TRIGLYCERIDES")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> mg%</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> 25-200</span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> LDL Cholestrol</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Photometry</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LC")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> mg%</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> 85-130</span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> VLDL Cholestrol</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Calculated</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("VC")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> mg%</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> 5-40</span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> TC/HDL Cholestrol Ratio</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Calculated</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("THCR")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Ratio</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> 3.0-5.0</span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> LDL/HDL Ratio</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Calculated</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("LHR")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Ratio</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> 1.5-3.5</span></td>
</tr>
</table>
<table style="position:absolute;left:197px;top:117px;width:806px;height:70px;z-index:3;" id="Table2">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Patient Name</strong></span></td>
<td class="cell0"><% PreparedStatement pstp;
            String queryp="select * from patientprofile where Aadhar="+aadhar; 
            pstp = con.prepareStatement(queryp);
            ResultSet rsp = pstp.executeQuery();
            rsp.next();%><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rsp.getString("Name")%> </span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Date</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("DateOfTest")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Refered By </strong></span></td>
<td class="cell0"><% PreparedStatement pstd;
            String queryd="select * from docprofile where doctorID="+rs.getString("DocID"); 
            pstd = con.prepareStatement(queryd);
            ResultSet rsd = pstd.executeQuery();
            rsd.next();%> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">  <%=rsd.getString("dName")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Lab Name</strong></span></td>
<td class="cell1"><% PreparedStatement pstl;
            String queryl="select * from labprofile where labID='"+rs.getString("LabID")+"'"; 
            pstl = con.prepareStatement(queryl);
            ResultSet rsl = pstl.executeQuery();
                        rsl.next();%> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">  <%=rsl.getString("lName")%></span></td>
</tr>
</table>
<table style="position:absolute;left:15px;top:195px;width:171px;height:195px;z-index:4;" id="Table3">
<tr>
<td class="cell0">&nbsp;</td>
</tr>
<tr>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="patientProfile.jsp">Patient Profile</a></strong></span></td>
</tr>
<tr id="profileHideDoc">
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="doctorProfile.jsp">Doctor Profile</a></strong></span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> <a href="labProfile.jsp">Lab Profile</a></strong></span></td>
</tr>
</table>
<div id="wb_Text2" style="position:absolute;left:197px;top:692px;width:160px;height:21px;z-index:5;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:15px;"><strong>Technologies Used</strong></span></div>
<div id="Html1" style="position:absolute;left:201px;top:719px;width:837px;height:247px;z-index:6"><%=rs.getString("Comments")%>
</div>
<%}
    else
{%>
    <div id="wb_Text1" style="position:absolute;left:147px;top:299px;z-index:1;text-align:left;">
        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Selected Report for the following patient is not available <a href='patientProfile.jsp'>click here</a> to go back and view an other record</span></div>
<%}%>
</body>
</html>