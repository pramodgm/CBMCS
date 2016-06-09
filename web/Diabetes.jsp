<%-- 
    Document   : Diabetes
    Created on : 3 May, 2016, 10:21:00 AM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diabetes</title>
                        <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<link href="doctorProfileByMe.css" rel="stylesheet">
<link href="Diabetes.css" rel="stylesheet">
</head>
<body>
    <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:1;">
<%@ page import ="java.sql.*" %>
        <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar = session.getAttribute("aadhar").toString();
            String query="select * from diabetes where Aadhar="+aadhar; 
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
    <table style="position:absolute;left:197px;top:195px;width:807px;height:637px;z-index:0; border: 0px #FFFFFF none;
   background-color: transparent;
   border-spacing: 0px;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <strong>TEST NAME</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong>VALUES</strong></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong>RANGE</strong></span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong>UNITS</strong></span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Fasting Blood Glucose, Plasma</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("FBGP")%></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">74-99</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> mg/dl</span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Cholestrol<br> Method: Hexokinase</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("CHOLESTROL")%></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> &lt;200 Desireable<br> 200-239 Borderline High<br> &gt;=240 High</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> mg/dl</span></td>
</tr>
<tr>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Triglycerides<br> Method: Enzymatic Assay</span></td>
<td class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("TRYGLYCERIDES")%></span></td>
<td class="cell6"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> &lt;150 Normal<br> 150-199 Borderline High<br> 200-499 High<br> &gt;=500 Very High</span></td>
<td class="cell7"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> mg/dl<br></span><span style="color:#000000;font-family:'Comic Sans MS';font-size:8px;line-height:23px;">&nbsp; </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Cholostrol HDL<br> Method: Enzymatic Assay</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("CHDL")%></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> &lt;40 Low<br> &gt;=60 High</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> mg/dl<br></span></td>
</tr>
<tr>
<td class="cell8"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Direct LDL Cholestrol<br> Method: Direct Measure</span></td>
<td class="cell9"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("DLC")%></span></td>
<td class="cell10"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> &lt;100 Optimal<br> 100-129 Near or Above Optimal<br> 130-159 Borderloine HIgh<br> 16-189 High<br> &gt;= 190 Very High</span></td>
<td class="cell11"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> mg/dl<br></span></td>
</tr>
<tr>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> CHOL/HDL Ratio<br> Method: Direct Homogenius</span></td>
<td class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("CHR")%></span></td>
<td class="cell6"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">3.3-4.4 Low Risk<br>4.5-7.0 Average Risk<br>7.1-11.0 Moderate Risk<br>&gt;11.0 High Risk</span></td>
<td class="cell7"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell4"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> LDL/HDL Ratio<br> Method: Calcualated Parameter</span></td>
<td class="cell5"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("LHR")%></span></td>
<td class="cell6"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> 0.5-3.0 Desireable/ Low Risk<br> 3.1-6.0 Borderline/Moderate Risk<br> &gt;6.0 High Risk</span></td>
<td class="cell7"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> </span></td>
</tr>
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> Verl Low Density Lipoprotein<br> Method: Calculated Parameter</span></td>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"><%=rs.getString("VLDL")%></span></td>
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> &lt;=30.0</span></td>
<td class="cell3"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">mg/dl</span></td>
</tr>
</table>
<div id="wb_Text1" style="position:absolute;left:15px;top:117px;width:342px;height:28px;z-index:2;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Diabetes Report</span></div>
<table style="position:absolute;left:197px;top:117px;width:806px;height:70px;z-index:3;" id="Table2">
<tr>
<td class="cell0"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> Patient Name</strong></span></td>
<td class="cell0"><% PreparedStatement pstp;
            String queryp="select * from patientprofile where Aadhar="+aadhar; 
            pstp = con.prepareStatement(queryp);
            ResultSet rsp = pstp.executeQuery();
            rsp.next();%><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;"> <%=rsp.getString("Name")%></span></td>
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
                        rsl.next();
                                                session.setAttribute("labid",rs.getString("LabID"));
%> <span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:18px;">  <%=rsl.getString("lName")%> </span></td>
</tr>
</table>
<table style="position:absolute;left:15px;top:195px;width:171px;height:195px;z-index:4;" id="Table3">
<tr>
<td class="cell0">&nbsp;</td>
</tr>
<tr>
<td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong> <a href="patientProfile.jsp">Patient Profile</a></strong></span></td>
</tr>
<tr>
    <td class="cell1"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="labProfile.jsp">Lab Profile</a></strong></span></td>
</tr>
<tr id="profileHideDoc">
<td class="cell2"><span style="color:#000000;font-family:'Comic Sans MS';font-size:13px;line-height:19px;"><strong><a href="doctorProfile.jsp">Doctor Profile</a> </strong></span></td>
</tr>
</table>
<div id="wb_Text2" style="position:absolute;left:201px;top:858px;width:160px;height:21px;z-index:5;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:15px;"><strong>Comments</strong></span></div>
<div id="Html1" style="position:absolute;left:201px;top:879px;width:837px;height:247px;z-index:6">
    <%=rs.getString("COMMENTS")%>
</div>
<%}
    else
{%>
    <div id="wb_Text1" style="position:absolute;left:147px;top:299px;z-index:1;text-align:left;">
        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Selected Report for the following patient is not available <a href='patientProfile.jsp'>click here</a> to go back and view an other record</span></div>
<%}%>
</body>
</html>