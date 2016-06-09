<%-- 
    Document   : CheckList_lab
    Created on : 1 May, 2016, 9:11:45 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient's Check List</title>
<link href="CheckList_lab.css" rel="stylesheet">
</head>
<body>
    <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
    <%@ page import ="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar = session.getAttribute("aadhar").toString();
            String query="select * from patientchecklist where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            String queryp="select * from patientprofile where Aadhar="+aadhar; 
            PreparedStatement pstp = con.prepareStatement(queryp);
            ResultSet rsp = pstp.executeQuery();
            rsp.next();
            if(rs.next())
            {
                            session.setAttribute("userid",rs.getString("DocID"));

%>
    
    <div id="wb_Text1" style="position:absolute;left:15px;top:117px;width:342px;height:28px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Patient's Check List</span></div>
<table style="position:absolute;left:221px;top:117px;width:402px;height:104px;z-index:2;" id="Table2">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Patient Name</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rsp.getString("Name")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Refered By </strong></span></td>
<td class="cell1"><% String queryd="select * from docprofile where doctorID='"+rs.getString("DocID")+"'"; 
            PreparedStatement pstd = con.prepareStatement(queryd);
            ResultSet rsd = pstd.executeQuery();
rsd.next();%><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rsd.getString("dName")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Date of Upload</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><%=rs.getString("DateOfUpload")%></strong></span></td>
</tr>
</table>
<table style="position:absolute;left:15px;top:195px;width:171px;height:195px;z-index:3;" id="Table3">
<tr>
    <td class="cell0"></td>
</tr>
<tr>
    <td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="patientProfile.jsp"> Patient Profile</a></strong></span></td>
</tr>
<tr>
    <td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="doctorProfile.jsp">Doctor Profile</a></strong></span></td>
</tr>
<tr>
    <td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="labProfile.jsp">Lab Profile</a></strong></span></td>
</tr>
</table>
<table style="position:absolute;left:224px;top:238px;width:400px;height:324px;z-index:4;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Haematology Report</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><%=rs.getString("Haematology")%></span></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><% if(rs.getString("Haematology").equals("YES")) {%><a href="HaematologyUpload.jsp"> Click here</a><%}%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Serology Report</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><%=rs.getString("Serology")%></span> </span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><% if(rs.getString("Serology").equals("YES")) {%><a href="SerologyUpload.jsp"> Click here</a><%}%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Urinalysis</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><%=rs.getString("Urinalysis")%></span></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><% if(rs.getString("Urinalysis").equals("YES")) {%><a href="UrinalysisUpload.jsp"> Click here</a><%}%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> LIPRO</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><%=rs.getString("LIPRO")%></span></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><% if(rs.getString("LIPRO").equals("YES")) {%> <a href="LiproUpload.jsp"> Click here</a><%}%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Cardiology</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><%=rs.getString("Cardiology")%></span></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><% if(rs.getString("Cardiology").equals("YES")) {%><a href="CardiologyUpload.jsp"> Click here</a><%}%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Diabetics</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><%=rs.getString("Diabetes")%></span></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <% if(rs.getString("Diabetes").equals("YES")) {%><a href="DiabetesUpload.jsp"> Click here</a><%}%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Audiology</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><%=rs.getString("Audiology")%></span></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <% if(rs.getString("Audiology").equals("YES")) {%><a href="AudiologyUpload.jsp"> Click here</a><%}%></span></td>
</tr>
</table>
<% }
    else
{%>
    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">No Check List Found for this Aadhar number:<%=aadhar %></span></div>
    <%}
%>
</body>
</html>