<%-- 
    Document   : HaematologyUploadVal
    Created on : 9 May, 2016, 7:06:46 PM
    Author     : Pramod
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Haematology Upload Validate</title>
    </head>
    <body>
                <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
        <%@ page import ="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar=session.getAttribute("aadhar").toString();
            String query="select * from bloodcount where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            String Haemoglobin,RBC,PCV,MCV,MCH,MCHC,TotalWBC,Neutrophills,Lymphocytes,Eosinophils,Monocytes,Basophils,ESR,AEC,RhType,BleedingTime,ClottingTime,PlateletCount,MalariaParasites;
            Haemoglobin=request.getParameter("Haemoglobin").toString();
            RBC=request.getParameter("RBC").toString();
            PCV=request.getParameter("PCV").toString();
            MCV=request.getParameter("MCV").toString();
            MCH=request.getParameter("MCH").toString();
            MCHC=request.getParameter("MCHC").toString();
            TotalWBC=request.getParameter("TotalWBC").toString();
            Neutrophills=request.getParameter("Neutrophills").toString();
            Lymphocytes=request.getParameter("Lymphocytes").toString();
            Eosinophils=request.getParameter("Eosinophils").toString();
            Monocytes=request.getParameter("Monocytes").toString();
            Basophils=request.getParameter("Basophils").toString();
            ESR=request.getParameter("ESR").toString();
            AEC=request.getParameter("AEC").toString();
            RhType=request.getParameter("RhType").toString();
            BleedingTime=request.getParameter("BleedingTime").toString();
            ClottingTime=request.getParameter("ClottingTime").toString();
            PlateletCount=request.getParameter("PlateletCount").toString();
            MalariaParasites=request.getParameter("Malaria").toString();
            java.util.Date d=new java.util.Date();
            SimpleDateFormat ft=new SimpleDateFormat("dd.MM.yyyy");
            if(rs.next())
            {
                query="UPDATE `bloodcount` SET `Haemoglobin` = '"+Haemoglobin+"', `RBC` = '"+RBC+"', `PCV` = '"+PCV+"', `MCV` = '"+MCV+"', `MCH` = '"+MCH+"', `MCHC` = '"+MCHC+"', `TotalWBC` = '"+TotalWBC+"', `Neutrophills` = '"+Neutrophills+"', `Lymphocytes` = '"+Lymphocytes+"', `Eosinophils` = '"+Eosinophils+"', `Monocytes` = '"+Monocytes+"', `Basophils` = '"+Basophils+"', `ESR` = '"+ESR+"', `AEC` = '"+AEC+"', `RhType` = '"+RhType+"', `BleedingTime` = '"+BleedingTime+"', `ClottingTime` = '"+ClottingTime+"', `PlateletCount` = '"+PlateletCount+"', `MalariaParasites` = '"+MalariaParasites+"', DateOfTest='"+ft.format(d)+"' WHERE `bloodcount`.`Aadhar` ="+aadhar;
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Haematology Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update Haematology.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <% }}
            else
            {
                query="INSERT INTO `bloodcount` (`Aadhar`, `DateOfTest`, `LabID`, `DocID`, `Haemoglobin`, `RBC`, `PCV`, `MCV`, `MCH`, `MCHC`, `TotalWBC`, `Neutrophills`, `Lymphocytes`, `Eosinophils`, `Monocytes`, `Basophils`, `ESR`, `AEC`, `RhType`, `BleedingTime`, `ClottingTime`, `PlateletCount`, `MalariaParasites`) VALUES ('"+aadhar+"', '"+ft.format(d)+"', '"+session.getAttribute("labid")+"', '"+session.getAttribute("userid")+"','"+Haemoglobin+"','"+RBC+"', '"+PCV+"', '"+MCV+"','"+MCH+"','"+MCHC+"','"+TotalWBC+"','"+Neutrophills+"','"+Lymphocytes+"','"+Eosinophils+"','"+Monocytes+"','"+Basophils+"','"+ESR+"','"+AEC+"', '"+RhType+"','"+BleedingTime+"','"+ClottingTime+"','"+PlateletCount+"','"+MalariaParasites+"')";
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Haematology Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update Haematology.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <%}
}%>
    </body>
</html>
