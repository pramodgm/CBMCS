<%-- 
    Document   : doctorProfile
    Created on : 17 Mar, 2016, 10:20:54 AM
    Author     : Pramod
--%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/DocProfByMe.css" rel="stylesheet">
        <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
</head>
<body>
<img src="images/banner.jpg" id="Banner1" alt="Efficient Medical Record Management &amp; Consultation System" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<div id="wb_Text2" style="position:absolute;left:19px;top:108px;width:109px;height:40px;z-index:2;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:29px;">Profile</span></div>
<%@ page import ="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String docID=session.getAttribute("userid").toString();
            String query="select * from docprofile where doctorID="+docID; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            rs.next();
            session.setAttribute("spec",rs.getString("AreaOfExpertise"));
%>
<script type="text/javascript">
    $(document).ready(function(){
        $("#docElements").hide();
            var typ="${sessionScope.loginType}";
            if(typ==="doctor")
            {
                $("#docElements").show();
                $("#backLabHome").hide();
                $("#backPatientHome").hide();
            }
            else if(typ==="patient")
            {
                $("#backLabHome").hide();
            }
            else
            {
                $("#backPatientHome").hide();
            }
        });
</script>
<table style="position:absolute;left:311px;top:176px;width:410px;height:305px;z-index:4;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">Name</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("dname")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">ID</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=session.getAttribute("userid")%></span></td>
</tr><tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Gender</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("Gender")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Date Of Birth</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Qualification</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("Qualification")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Specialization</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("AreaOfExpertise")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;line-height:24px;"> Clinic Address</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("ClinicAddress")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Aadhar Number</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("Aadhar")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Email</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("email")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Phone</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("phone1")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("phone2")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Open Time</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("OpenTime")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Close Time</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("CloseTime")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Discipline</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("Discipline")%></span></td>
</tr>
</table>
<div id="wb_Text3" style="position:absolute;left:37px;top:445px;width:192px;height:16px;z-index:5;text-align:left;">
&nbsp;</div>
<div id="Html1" style="position:absolute;left:19px;top:175px;width:269px;height:245px;z-index:3">
    <iframe src="getImage.jsp" height="150" width="150"></iframe>
</div>
<div id="docElements">
 <div id="wb_Text1" style="position:absolute;left:1289px;top:112px;width:63px;height:24px;z-index:1;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="doclogout.jsp">Logout</a></span></div>
<form action="SearchResult_doc.jsp" method="GET">
<input type="text" id="Editbox1" style="position:absolute;left:877px;top:238px;width:345px;height:30px;line-height:30px;z-index:6;" name="aadharnum" value="" maxlength="12" title="AadharNumber"/>
<input type="submit" id="Button1" name="" value="Submit" style="position:absolute;left:976px;top:296px;width:151px;height:41px;z-index:7;"/>
</form>
<div id="wb_Text4" style="position:absolute;left:1210px;top:112px;width:73px;height:24px;z-index:8;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="doctorSettings.jsp">Settings</a></span></div>
<div id="wb_Text5" style="position:absolute;left:878px;top:190px;width:346px;height:48px;text-align:center;z-index:9;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;">Enter the Aadhar Number of your patient to search for...</span></div>
</div>
<div id="backPatientHome" style="position:absolute;left:1210px;top:112px;width:150px;height:24px;z-index:6;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="patientProfile.jsp">Back to Home</a></span></div>
    <div id="backLabHome" style="position:absolute;left:1210px;top:112px;width:140px;height:24px;z-index:6;text-align:left;">
            <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="labProfile.jsp">Back to Home</a></span></div>
</body>
</html>
