<%-- 
    Document   : Audiology
    Created on : 27 Apr, 2016, 10:29:34 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Audiology</title>
                        <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<link href="../css/Audiology.css" rel="stylesheet">
</head>
<body>
<img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
<%@ page import ="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar = session.getAttribute("aadhar").toString();
            String query="select * from audiometry where Aadhar="+aadhar; 
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
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Audiology</span></div>
<table style="position:absolute;left:197px;top:117px;width:818px;height:70px;z-index:2;" id="Table2">
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
            rsd.next();%> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">  <%=rsd.getString("dName")%> </span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Lab Name</strong></span></td>
<td class="cell1"><% PreparedStatement pstl;
            String queryl="select * from labprofile where labID='"+rs.getString("LabID")+"'"; 
            pstl = con.prepareStatement(queryl);
            ResultSet rsl = pstl.executeQuery();
                        rsl.next();%> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">  <%=rsl.getString("lName")%></span></td>
</tr>
</table>
<table style="position:absolute;left:15px;top:195px;width:171px;height:195px;z-index:3;" id="Table3">
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
    <td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="labProfile.jsp">Lab Profile</a></strong><span</td>
</tr>
</table>
<div id="wb_Text3" style="position:absolute;left:518px;top:195px;width:342px;height:28px;z-index:4;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Hearing Assessment</span></div>
<div id="wb_Text4" style="position:absolute;left:237px;top:223px;width:342px;height:28px;z-index:5;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Audiogram</span></div>
<!-- Audiogram -->
<div id="Html2" style="position:absolute;left:228px;top:260px;width:580px;height:454px;z-index:6"><iframe src="getAudiologyImages.jsp?imageid=Audiogram" width="385" height="360"></iframe>
</div>
<div id="wb_Text5" style="position:absolute;left:108px;top:728px;width:342px;height:28px;z-index:7;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Audiogram</span></div>
<table style="position:absolute;left:108px;top:756px;width:431px;height:234px;z-index:8;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Ear\Test</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> PTA</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> SRT</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> SDS</span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Right</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("PTAR")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("SRTR")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("SDSR")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Left</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("PTAL")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("SRTL")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("SDSL")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Both</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("PTAB")%></span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("SRTB")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("SDSB")%></span></td>
</tr>
</table>
<div id="wb_Text6" style="position:absolute;left:590px;top:728px;width:342px;height:28px;z-index:9;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">WeberTest</span></div>
<table style="position:absolute;left:590px;top:756px;width:324px;height:292px;z-index:10;" id="Table4">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Frequency in Hertz</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Right</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Left</span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> 250</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("WTR1")%> </span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("WTL1")%> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> 500</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("WTR2")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("WTL2")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> 1000</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("WTR3")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("WTL3")%></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">2000</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("WTR4")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("WTL4")%></span></td>
</tr>
</table>
<div id="wb_Text7" style="position:absolute;left:959px;top:728px;width:342px;height:48px;z-index:11;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Audiometer<br></span><span style="color:#000000;font-family:'Comic Sans MS';font-size:15px;">700 MK IV Arphi</span></div>
<table style="position:absolute;left:959px;top:776px;width:324px;height:234px;z-index:12;" id="Table5">
<tr>
<td class="cell0">&nbsp;</td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Right</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Left</span></td>
</tr>
<tr>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">SISI</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("SISIR")%></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("SISIL")%> </span></td>
</tr>
<tr>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">TDT</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("TDTR")%></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("TDTL")%></span></td>
</tr>
<tr>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">ABLB</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("ABLBR")%></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("ABLBL")%></span></td>
</tr>
</table>
<div id="wb_Text2" style="position:absolute;left:579px;top:1076px;width:342px;height:28px;z-index:13;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Impedance Audiometry</span></div>
<div id="wb_Text8" style="position:absolute;left:357px;top:1104px;width:342px;height:28px;z-index:14;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Tymphanometry</span></div>
<!-- Tymphanometry -->
<div id="Html1" style="position:absolute;left:108px;top:1132px;width:700px;height:421px;z-index:15">
</div>
<div id="wb_Text9" style="position:absolute;left:860px;top:1104px;width:342px;height:28px;z-index:16;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">E.T Function</span></div>
<table style="position:absolute;left:860px;top:1132px;width:296px;height:191px;z-index:17;" id="Table6">
<tr>
<td colspan="2" class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Right</span></td>
<td class="cell1">&nbsp;</td>
<td colspan="2" class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Left</span></td>
</tr>
<tr>
<td colspan="2" class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Result</span></td>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Normal Function</span></td>
<td colspan="2" class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Result</span></td>
</tr>
<tr>

<td colspan="2" class="cell8"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("NTR")%></span></td>
<td class="cell9"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Normal Toynbee</span></td>
<td colspan="2" class="cell10"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("NTL")%></span></td>
</tr>
<tr>

<td colspan="2" class="cell13"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("NVR")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Normal Valsalva</span></td>
<td colspan="2" class="cell14"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("NVL")%></span></td>

</tr>
<tr>

<td colspan="2" class="cell13"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("PR")%></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Patient</span></td>
<td colspan="2" class="cell14"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("PL")%></span></td>

</tr>
</table>
<table style="position:absolute;left:862px;top:1342px;width:297px;height:113px;z-index:18;" id="Table7">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Tests\Ear</span></td>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Right</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Left</span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">Middle Ear Pressure mm H<sub>2</sub>0</span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("MER")%></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rs.getString("MEL")%></span></td>
</tr>
</table>
<div id="wb_Text10" style="position:absolute;left:450px;top:1576px;width:420px;height:28px;z-index:19;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Brainstem Evoked Response Audiometry</span></div>
<div id="wb_Image2" style="position:absolute;left:756px;top:1936px;width:0px;height:0px;z-index:20;">
<img src="" id="Image2" alt=""></div>
<!-- Brainstem_Evoked_Response_Audiometry -->
<div id="Html3" style="position:absolute;left:108px;top:1616px;width:1218px;height:453px;z-index:21">
</div>
<div id="wb_Text11" style="position:absolute;left:588px;top:2098px;width:420px;height:28px;z-index:22;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Tympanogram</span></div>
<!-- Tympanogram_Right -->
<div id="Html4" style="position:absolute;left:116px;top:2170px;width:610px;height:1976px;z-index:23">
</div>
<!-- Tympanogram_Left -->
<div id="Html5" style="position:absolute;left:746px;top:2165px;width:610px;height:1976px;z-index:24">
</div>
<div id="wb_Text12" style="position:absolute;left:116px;top:2142px;width:420px;height:28px;z-index:25;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Right</span></div>
<div id="wb_Text13" style="position:absolute;left:746px;top:2137px;width:420px;height:28px;z-index:26;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Left</span></div>
<%}
    else
{%>
    <div id="wb_Text1" style="position:absolute;left:147px;top:299px;z-index:1;text-align:left;">
        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Selected Report for the following patient is not available <a href='patientProfile.jsp'>click here</a> to go back and view an other record</span></div>
<%}%>
</body>
</html>