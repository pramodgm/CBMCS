<%-- 
    Document   : Urinalysis
    Created on : 27 Apr, 2016, 10:27:39 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Urinalysis</title>
                        <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<link href="../css/Urinalysis.css" rel="stylesheet">
</head>
<body>
    <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
    <%@ page import ="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar=session.getAttribute("aadhar").toString();
            String query="select * from Urinalysis where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            if(rs.next())
            {
            byte i=5;
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
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Urinalysis</span></div>
<table style="position:absolute;left:197px;top:117px;width:818px;height:70px;z-index:2;" id="Table2">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Patient Name</strong></span></td>
<td class="cell0"><% PreparedStatement pstp;
            String queryp="select * from patientprofile where Aadhar="+aadhar; 
            pstp = con.prepareStatement(queryp);
            ResultSet rsp = pstp.executeQuery();
            rsp.next();%> <%=rsp.getString("Name")%><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("DateOfTest")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Date</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("DateOfTest")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Refered By </strong></span></td>
<td class="cell0"><% PreparedStatement pstd;
            String queryd="select * from docprofile where doctorID="+rs.getString("DocID"); 
            pstd = con.prepareStatement(queryd);
            ResultSet rsd = pstd.executeQuery();
                        rsd.next();%><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rsd.getString("dName")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Lab Name</strong></span></td>
<td class="cell1"><%/* PreparedStatement pstl;
            String queryl="select * from labprofile where labID="+rs.getString("LabID"); 
            pstl = con.prepareStatement(queryl);
            ResultSet rsl = pstl.executeQuery();
                        rsl.next();*/%><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%//=rsl.getString("dName")%></span></td>
</tr>
</table>
<table style="position:absolute;left:15px;top:195px;width:171px;height:195px;z-index:3;" id="Table3">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong></strong></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> <a href="patientProfile.jsp">Patient Profile</a></strong></span></td>
</tr>
<tr id="profileHideDoc">
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="doctorProfile.jsp">Doctor Profile</a></strong></span></td>
</tr>
<tr>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="labProfile.jsp">Lab Profile</a></strong></span></td>
</tr>
</table>
<table style="position:absolute;left:198px;top:195px;width:816px;height:805px;z-index:4;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>Test Name</strong></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong>Result</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>Biological Reference Interval</strong></span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Color</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Appearance</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> PH</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; 4.7-7.5</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Specific Gravity</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; 1.003-1.035</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Glucose</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Protein</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Ketones</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Blood</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED<br></span><span style="color:#000000;font-family:'Comic Sans MS';font-size:8px;line-height:23px;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Bilirubin</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Urobilinogen</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NORMAL</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Nitrite</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> WBC</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; 0-5</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Epithelial Cells</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; 0-5</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Red Blood Cells</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Casts</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Crystals</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Bacteria</span></td>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString(i++)%></span></td>
<td class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
</table>
<div id="wb_Text2" style="position:absolute;left:198px;top:1012px;width:130px;height:21px;z-index:5;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:15px;"><strong>Remarks</strong></span></div>
<div id="Html1" style="position:absolute;left:200px;top:1035px;width:814px;height:179px;z-index:6"><%=rs.getString(i++)%>
</div>
<%}
    else
{%>
    <div id="wb_Text1" style="position:absolute;left:147px;top:299px;z-index:1;text-align:left;">
        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Selected Report for the following patient is not available <a href='patientProfile.jsp'>click here</a> to go back and view an other record</span></div>
<%}%>
</body>
</html>