<%-- 
    Document   : LIPROUploadVal
    Created on : 11 May, 2016, 11:59:52 AM
    Author     : Pramod
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
         <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LIPRO Upload Validate</title>
    </head>
    <body>
                <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
        <%@ page import ="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar=session.getAttribute("aadhar").toString();
            String query="select * from lipro where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            String CT,CHD,Tri,LC,VC,THCR,LHR,TechUsed;
            CT=request.getParameter("CT");
            CHD=request.getParameter("CHD");
            Tri=request.getParameter("Triglycerides");
            LC=request.getParameter("LC");
            VC=request.getParameter("VC");
            THCR=request.getParameter("THCR");
            LHR=request.getParameter("LHR");
            TechUsed=request.getParameter("TechUsed");
            java.util.Date d=new java.util.Date();
            SimpleDateFormat ft=new SimpleDateFormat("dd.MM.yyyy");
            if(rs.next())
            {
                query="UPDATE `lipro` SET `DocID` = '"+session.getAttribute("userid")+"', `LabID` = '"+session.getAttribute("labid")+"', `DateOfTest` = '"+ft.format(d)+"', `CT` = '"+CT+"', `CHD` = '"+CHD+"', `TRIGLYCERIDES` = '"+Tri+"', `LC` = '"+LC+"', `VC` = '"+LC+"', `THCR` = '"+THCR+"', `LHR` = '"+LHR+"', `Comments` = '"+TechUsed+"' WHERE `lipro`.`Aadhar` = '"+aadhar+"'";
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The LIPRO Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update LIPRO.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <% }}
            else
            {
                query="INSERT INTO `lipro` (`Aadhar`, `DocID`, `LabID`, `DateOfTest`, `CT`, `CHD`, `TRIGLYCERIDES`, `LC`, `VC`, `THCR`, `LHR`, `Comments`) VALUES ('"+aadhar+"', '"+session.getAttribute("userid")+"', '"+session.getAttribute("labid")+"', '"+ft.format(d)+"', '"+CT+"', '"+CHD+"', '"+Tri+"', '"+LC+"', '"+VC+"', '"+THCR+"', '"+LHR+"', '"+TechUsed+"')";
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The LIPRO Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update LIPRO.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <%}
}%>
   </body>
</html>
