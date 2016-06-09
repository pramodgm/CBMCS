<%-- 
    Document   : labProfile
    Created on : 21 Mar, 2016, 6:32:37 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab Profile</title>
    <link href="../css/labProfile.css" rel="stylesheet">
<link href="../css/labProfile.css" rel="stylesheet">
        <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>

</head>
<body>
<img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<div id="wb_Text2" style="position:absolute;left:19px;top:108px;width:180px;height:40px;z-index:2;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:29px;">Lab Profile</span></div>
<div id="Html1" style="position:absolute;left:19px;top:175px;width:105px;height:105px;z-index:3"><iframe width="130px" height="130px" src="getLabImage.jsp"></iframe>
</div>
<%@ page import ="java.sql.*" %>
<%try{ Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            Statement pst;
            ResultSet rs;
         
            String labID=session.getAttribute("labid").toString();
            String query="select * from labprofile where labID='"+labID+"'"; 
            pst = con.createStatement();
            rs = pst.executeQuery(query);
            rs.next();
            
%>
<script type="text/javascript">
    $(document).ready(function(){
        $("#labElements").hide();
            var typ="${sessionScope.loginType}";
            if(typ==="lab")
            {
                $("#labElements").show();
                $("#backDocHome").hide();
                $("#backPatientHome").hide();
            }
            else if(typ==="patient")
            {
                $("#backdocHome").hide();
            }
            else
            {
                $("#backPatientHome").hide();
            }
        });
</script>
<table style="position:absolute;left:311px;top:176px;width:410px;height:381px;z-index:4;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">Lab Name</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("lName")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Lab ID</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("labID")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Address</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("Address")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Open Time</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> <%=rs.getString("OpenTime")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">Close Time</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("CloseTime")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;line-height:24px;">E-mail</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("email")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">Lab Owner</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("Owner")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">Year Started</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("YearStarted")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">Phone</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("phone1")%></span></td>
</tr>
<tr>
<td class="cell0">&nbsp;</td>
<td class="cell1"><%=rs.getString("phone2")%></td>
</tr>
</table>
<div id="wb_Text3" style="position:absolute;left:37px;top:445px;width:192px;height:16px;z-index:5;text-align:left;">
&nbsp;</div>
<div id="labElements">
<form name="searchpatient" method="get" action="labSearchResult.jsp" enctype="text/plain" id="Form1">
<input type="text" id="Editbox1" style="position:absolute;left:877px;top:238px;width:345px;height:30px;line-height:30px;z-index:6;" name="aadharnum" value="" maxlength="12" title="AadharNumber">
<input type="submit" id="Button1" name="" value="Submit" style="position:absolute;left:976px;top:296px;width:151px;height:41px;z-index:7;">
</form>
<div id="wb_Text4" style="position:absolute;left:1210px;top:112px;width:73px;height:24px;z-index:8;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="labSettings.jsp">Settings</a></span></div>
    <div id="wb_Text1" style="position:absolute;left:1289px;top:112px;width:63px;height:24px;z-index:1;text-align:left;">
        <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="lablogout.jsp">Logout</a></span></div>
<div id="wb_Text5" style="position:absolute;left:878px;top:190px;width:346px;height:48px;text-align:center;z-index:9;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;">Enter the Aadhar Number of your patient to search for...</span></div></div>
    <div id="backDocHome" style="position:absolute;left:1210px;top:112px;width:140px;height:24px;z-index:6;text-align:left;">
        <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="doctorProfile.jsp">Back to Home</a></span></div>
        <div id="backPatientHome" style="position:absolute;left:1210px;top:112px;width:150px;height:24px;z-index:6;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="patientProfile.jsp">Back to Home</a></span></div>
<%}
catch(SQLException e)
{
out.print(e);
}%>
</body>
</html>
