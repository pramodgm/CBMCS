<%-- 
    Document   : patientProfile
    Created on : 18 Mar, 2016, 8:46:08 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  <link rel="icon" href="./images/cbms_logo.png">   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Profile</title>
<link href="../css/patientProfile.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
    </head>
<body>
    <div id="Body">
<img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<div id="wb_Text2" style="position:absolute;left:19px;top:108px;width:109px;height:40px;z-index:2;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:29px;">Profile</span></div>
<div id="Html1" style="position:absolute;left:19px;top:175px;width:160px;height:150px;z-index:3">
    <iframe src="getpatientImage.jsp" width="160px" height="150px"></iframe>
    
</div>
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
%>
<script type="text/javascript">
    $(document).ready(function(){
        $("#patientElements").hide();
        var typ="${sessionScope.loginType}";
        if(typ=== "doctor")
        {
            $("#patientElements").show();
            $("#backLabHome").hide();
            $("li").hide();
            $("#wb_Text1").hide();
            $("#wb_Text4").hide();
            var spc="${sessionScope.spec}";
            if(spc==="General Physician")
            {
                $("#Blood").show();
                $("#Sero").show();
                $("#Urin").show();
                $("#mr").show();
            }
            else if(spc==="Diabetics")
            {
                $("#Dia").show();
                $("#mr").show();
            }
            else if(spc==="Neurologist")
            {
                $("#mr").show();
            }else if(spc==="Radiologist")
            {
                $("#mr").show();
            }else if(spc==="Audiologist")
            {
                $("#Aud").show();
                $("#mr").show();
            }else if(spc==="Cardiologist")
            {
                $("#Card").show();
                $("#Dia").show();
                $("#mr").show();
            }
        }
        else if(typ=== "patient")
        {
            $("#patientElements").show();
            $("#backDocHome").hide();
            $("#backLabHome").hide();
        }
        else
        {
            $("#patientElements").show();
            //$("li").hide();
            $("#wb_Text5").hide();
            $("#wb_Text1").hide();
            $("#wb_Text4").hide();
            $("#backDocHome").hide();
            $("#backLabHome").show();
        }
    });
    
</script>

<table style="position:absolute;left:311px;top:176px;width:410px;height:343px;z-index:4;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">Name</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("Name")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Aadhar Number</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("Aadhar")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Date Of Birth</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("DOB")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">Address</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("Address")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"> Phone No.</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("Phone_no")%></span></td>
</tr>
<tr>
    <td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">&nbsp;</span></td>
    <td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("Phone_no2")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;line-height:24px;">Gender</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("Gender")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">Blood Group</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("BloodGroup")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;">Email</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:16px;line-height:23px;"><%=rs.getString("email")%></span></td>
</tr>
</table>
<div id="wb_Text3" style="position:absolute;left:37px;top:445px;width:192px;height:16px;z-index:5;text-align:left;">
&nbsp;</div>
<div id="patientElements">
<div id="wb_Text1" style="position:absolute;left:1289px;top:112px;width:63px;height:24px;z-index:1;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="patientLogout.jsp">Logout</a></span></div>
<div id="wb_Text4" style="position:absolute;left:1210px;top:112px;width:73px;height:24px;z-index:6;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="patientSettings.jsp">Settings</a></span></div>
    <div id="backDocHome" style="position:absolute;left:1210px;top:112px;width:140px;height:24px;z-index:6;text-align:left;">
        <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="doctorProfile.jsp">Back to Home</a></span></div>
        <div id="backLabHome" style="position:absolute;left:1210px;top:112px;width:140px;height:24px;z-index:6;text-align:left;">
            <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><a href="labProfile.jsp">Back to Home</a></span></div>
<div id="wb_Text5" style="position:absolute;left:908px;top:194px;width:263px;height:280px;z-index:7;text-align:left;">
    <span style="color:#000000;font-family:'Comic Sans MS';font-size:17px;"><u id="mr">Medical Records</u><br/>
        <ul id="ulList">
            <li id="Blood"><a href="BloodCount.jsp">Hematology Details</a><br/></li>
            <li id="Sero"><a href="SerologyReport.jsp">Serology Details</a><br/></li>
            <li id="Urin"><a href="Urinalysis.jsp">Urinalysis</a><br/></li>
            <li id="Lip"><a href="LIPRO.jsp">LIPO Report</a><br/></li>
            <li id="Card"><a href="Cardiology_Report.jsp">Cardiology Details</a><br/></li>
            <li id="Aud"><a href="Audiology.jsp">Audiology Report</a><br/></li>
            <li id="Dia"><a href="Diabetes.jsp" >DIA Details</a><br/></li>
        </ul>
    </span>
</div>
    </div>
</div>
</body>
</html>
