<%-- 
    Document   : UrinalysisUpload
    Created on : 11 May, 2016, 7:29:19 AM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/UrinalysisUpload.css" rel="stylesheet">
        <title>Urinalysis Upload</title>
</head>
<body>
    <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<div id="wb_Text1" style="position:absolute;left:15px;top:117px;width:342px;height:28px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Urinalysis</span></div>
<table style="position:absolute;left:197px;top:117px;width:818px;height:70px;z-index:2;" id="Table2">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Patient Name</strong></span></td>
<td class="cell0"><%@ page import ="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar=session.getAttribute("aadhar").toString();
            String query="select * from patientprofile where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
    rs.next(); %><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("Name") %></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Date</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Refered By </strong></span></td>
<td class="cell0"><% PreparedStatement pstd;
            String queryd="select * from docprofile where doctorID="+session.getAttribute("userid").toString(); 
            pstd = con.prepareStatement(queryd);
            ResultSet rsd = pstd.executeQuery();
                            rsd.next();%><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rsd.getString("dName")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Lab Name</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=session.getAttribute("labid") %></span></td>
</tr>
</table>
<table style="position:absolute;left:15px;top:195px;width:171px;height:195px;z-index:3;" id="Table3">
<tr>
<td class="cell0">&nbsp;</td>
</tr>
<tr>
    <td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="patientProfile.jsp"> Patient Profile</a></strong></span></td>
</tr>
<tr>
    <td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="doctorProfile.jsp">Doctor Profile</a></strong></span></td>
</tr>
<tr>
    <td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> <a href="labProfile.jsp">Laboratory Profile</a><br></strong></span></td>
</tr>
<tr>
    <td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="CheckList_lab.jsp">View Checklist</a></strong></span></td>
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
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Appearance</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> PH</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; 4.7-7.5</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Specific Gravity</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; 1.003-1.035</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Glucose</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Protein</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Ketones</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Blood</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED<br></span><span style="color:#000000;font-family:'Comic Sans MS';font-size:8px;line-height:23px;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Bilirubin</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Urobilinogen</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NORMAL</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Nitrite</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> WBC</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; 0-5</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Epithelial Cells</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; 0-5</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Red Blood Cells</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Casts</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Crystals</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
<tr>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Bacteria</span></td>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
<td class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">&nbsp; NOT DETECTED</span></td>
</tr>
</table>
<div id="wb_Text2" style="position:absolute;left:198px;top:1012px;width:130px;height:21px;z-index:5;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:15px;"><strong>Remarks</strong></span></div>
<div id="Html1" style="position:absolute;left:200px;top:1035px;width:814px;height:179px;z-index:6">
</div>
<form method="get" action="UrinalysisUploadVal.jsp">
<textarea name="Comments" id="TextArea1" style="position:absolute;left:203px;top:1039px;width:800px;height:164px;z-index:7;" rows="8" cols="130" maxlength="80"></textarea>
<input type="text" id="Editbox1" style="position:absolute;left:480px;top:245px;width:252px;height:31px;line-height:31px;z-index:8;" name="Color" value="">
<input type="text" id="Editbox2" style="position:absolute;left:480px;top:289px;width:252px;height:31px;line-height:31px;z-index:9;" name="Appearence" value="">
<input type="text" id="Editbox3" style="position:absolute;left:480px;top:333px;width:252px;height:31px;line-height:31px;z-index:10;" name="PH" value="">
<input type="text" id="Editbox4" style="position:absolute;left:480px;top:377px;width:252px;height:31px;line-height:31px;z-index:11;" name="SG" value="">
<input type="text" id="Editbox5" style="position:absolute;left:480px;top:420px;width:252px;height:31px;line-height:31px;z-index:12;" name="Glucose" value="">
<input type="text" id="Editbox6" style="position:absolute;left:480px;top:465px;width:252px;height:31px;line-height:31px;z-index:13;" name="Protrin" value="">
<input type="text" id="Editbox7" style="position:absolute;left:480px;top:509px;width:252px;height:31px;line-height:31px;z-index:14;" name="Ketones" value="">
<input type="text" id="Editbox8" style="position:absolute;left:480px;top:553px;width:252px;height:31px;line-height:31px;z-index:15;" name="Blood" value="">
<input type="text" id="Editbox9" style="position:absolute;left:480px;top:597px;width:252px;height:31px;line-height:31px;z-index:16;" name="Bilirubin" value="">
<input type="text" id="Editbox10" style="position:absolute;left:480px;top:640px;width:252px;height:31px;line-height:31px;z-index:17;" name="Urobilibogen" value="">
<input type="text" id="Editbox11" style="position:absolute;left:480px;top:685px;width:252px;height:31px;line-height:31px;z-index:18;" name="Nitrite" value="">
<input type="text" id="Editbox12" style="position:absolute;left:480px;top:728px;width:252px;height:31px;line-height:31px;z-index:19;" name="WBC" value="">
<input type="text" id="Editbox13" style="position:absolute;left:480px;top:772px;width:252px;height:31px;line-height:31px;z-index:20;" name="EC" value="">
<input type="text" id="Editbox14" style="position:absolute;left:480px;top:817px;width:252px;height:31px;line-height:31px;z-index:21;" name="RBC" value="">
<input type="text" id="Editbox15" style="position:absolute;left:480px;top:861px;width:252px;height:31px;line-height:31px;z-index:22;" name="Casts" value="">
<input type="text" id="Editbox16" style="position:absolute;left:480px;top:904px;width:252px;height:31px;line-height:31px;z-index:23;" name="Crystals" value="">
<input type="text" id="Editbox17" style="position:absolute;left:480px;top:954px;width:252px;height:31px;line-height:31px;z-index:24;" name="Bacteria" value="">
<input type="submit" id="Button1" name="" value="Submit" style="position:absolute;left:443px;top:1242px;width:96px;height:25px;z-index:25;">
<input type="reset" id="Button2" name="" value="Reset" style="position:absolute;left:582px;top:1242px;width:96px;height:25px;z-index:26;">
</form>
</body>
</html>