<%-- 
    Document   : labSearchResult
    Created on : 1 May, 2016, 8:49:08 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab Search Results</title>
<link href="labSearchResult.css" rel="stylesheet">
</head>
<body>
        <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
    <%@ page import ="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar = request.getParameter("aadharnum");
            String query="select * from patientprofile where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            session.setAttribute("aadhar",aadhar);
            if(rs.next())
            {
%>
<div id="wb_Text1" style="position:absolute;left:21px;top:123px;width:263px;height:38px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:27px;">Search Results</span></div>
<table style="position:absolute;left:143px;top:241px;width:1145px;height:311px;z-index:2; border: 2px #000000 solid;" id="Table1">
<tr>
    <td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("Aadhar")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("Name")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:Arial;font-size:16px;line-height:16px;"><iframe src="getpatientImage.jsp?" height="150px" width="150px"></iframe></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><a href="CheckList_lab.jsp"> View Check List</a> </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><a href="patientProfile.jsp"> View Profile</a></span></td>
</tr>
</table>
<% }
else 
{%>
<div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">No Patient Record Found for this Aadhar number:<%=aadhar %></span></div>
<%}
%>
<div id="wb_Text2" style="position:absolute;left:1103px;top:108px;width:263px;height:28px;z-index:4;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;"><a href="labProfile.jsp">Profile</a></span></div>
</body>
</html>