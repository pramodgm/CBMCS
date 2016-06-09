<%-- 
    Document   : CardiologyUploadVal
    Created on : 11 May, 2016, 12:52:43 PM
    Author     : Pramod
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
         <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cardiology Upload Validate</title>
    </head>
    <body>
                <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
        <%@ page import ="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar=session.getAttribute("aadhar").toString();
            String query="select * from cardiology where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            String RAP,IVSD,IVSFS,IVSS,AOROOT,LAD,LAAO,LVVDCUB,LVVDTEICH,LVIDO,FS,EFCUD,EFTEICH,LVVSCUB,LVVSTEICH,LVIDS,SVCUB,SVTEICH,LVPWD,LVPD,LVPWS,LVD,LVS,AOLA,LVDMASSPENN,LVSMASSPENN,LVOTV,LVOTPG,MVA,MCEA,MVE,TVA,TVEA,TVE,PVPG,PVV,RR,DG,COM;
            RAP=request.getParameter("RAP");
            IVSD=request.getParameter("IVSD");
            IVSFS=request.getParameter("IVSFS");
            IVSS=request.getParameter("IVSS");
            AOROOT=request.getParameter("AoRoot");
            LAD=request.getParameter("LAD");
            LAAO=request.getParameter("LAAo");
            LVVDCUB=request.getParameter("LVVDC");
            LVVDTEICH=request.getParameter("LVVDT");
            LVIDO=request.getParameter("LVID");
            FS=request.getParameter("FS");
            EFCUD=request.getParameter("EFC");
            EFTEICH=request.getParameter("EFT");
            LVVSCUB=request.getParameter("LVVSC");
            LVVSTEICH=request.getParameter("LVVST");
            LVIDS=request.getParameter("LVIDS");
            SVCUB=request.getParameter("SVC");
            SVTEICH=request.getParameter("SVT");
            LVPWD=request.getParameter("LVPWD");
            LVPD=request.getParameter("LVPW");
            LVPWS=request.getParameter("LVPWS");
            LVD=request.getParameter("LVDM");
            LVS=request.getParameter("LVSM");
            AOLA=request.getParameter("AoLA");
            LVDMASSPENN=request.getParameter("LVDMP");
            LVSMASSPENN=request.getParameter("LVSMP");
            LVOTV=request.getParameter("LVOTPV");
            LVOTPG=request.getParameter("LVOTPG");
            MVA=request.getParameter("MVPA");
            MCEA=request.getParameter("MCEA");
            MVE=request.getParameter("MVPE");
            TVA=request.getParameter("TVPA");
            TVEA=request.getParameter("TVEA");
            TVE=request.getParameter("TVE");
            PVPG=request.getParameter("PVPG");
            PVV=request.getParameter("PVPV");
            RR=request.getParameter("ReferalReason");
            DG=request.getParameter("Diagonosis");
            COM=request.getParameter("Comments");
            
            java.util.Date d=new java.util.Date();
            SimpleDateFormat ft=new SimpleDateFormat("dd.MM.yyyy");
            if(rs.next())
            {
                query="UPDATE `cardiology` SET `DocID` = '"+session.getAttribute("userid")+"', `LabID` = '"+session.getAttribute("labid")+"', `DateOfTest` = '"+ft.format(d)+"', `RAP` = '"+RAP+"', `IVSD` = '"+IVSD+"', `IVSFS` = '"+IVSFS+"', `IVSS` = '"+IVSS+"', `AOROOT` = '"+AOROOT+"', `LAD` = '"+LAD+"', `LAAO` = '"+LAAO+"', `LVVDCUB` = '"+LVVDCUB+"', `LVVDTEICH` = '"+LVVDTEICH+"', `LVIDD` = '"+LVIDO+"', `%FS` = '"+FS+"', `EFCUD` = '"+EFCUD+"', `EFTEICH` = '"+EFTEICH+"', `LVVSCUB` = '"+LVVSCUB+"', `LVVSTEICH` = '"+LVVSTEICH+"', `LVIDS` = '"+LVIDS+"', `SVCUB` = '"+SVCUB+"', `SVTEICH` = '"+SVTEICH+"', `LVPWD` = '"+LVPWD+"', `%LVPW` = '"+LVPD+"', `LVPWS` = '"+LVPWS+"', `LVD` = '"+LVD+"', `LVS` = '"+LVS+"', `AOLA` = '"+AOLA+"', `LVDMASSPENN` = '"+LVDMASSPENN+"', `LVSMASSPENN` = '"+LVSMASSPENN+"', `LVOTV` = '"+LVOTV+"', `LVOTPG` = '"+LVOTPG+"', `MVA` = '"+MVA+"', `MCEA` = '"+MCEA+"', `MVE` = '"+MVE+"', `TVA` = '"+TVA+"', `TVEA` = '"+TVEA+"', `TVE` = '"+TVE+"', `PVPG` = '"+PVPG+"', `PVV` = '"+PVV+"', `ReferalReason` = '"+RR+"', `Diagnosis` = '"+DG+"', `Comments` = '"+COM+"' WHERE `cardiology`.`Aadhar` = '"+aadhar+"'";
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Cardiology Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update Cardiology.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <% }}
            else
            {
                query="INSERT INTO `cardiology` (`Aadhar`, `DocID`, `LabID`, `DateOfTest`, `RAP`, `IVSD`, `IVSFS`, `IVSS`, `AOROOT`, `LAD`, `LAAO`, `LVVDCUB`, `LVVDTEICH`, `LVIDD`, `%FS`, `EFCUD`, `EFTEICH`, `LVVSCUB`, `LVVSTEICH`, `LVIDS`, `SVCUB`, `SVTEICH`, `LVPWD`, `%LVPW`, `LVPWS`, `LVD`, `LVS`, `AOLA`, `LVDMASSPENN`, `LVSMASSPENN`, `LVOTV`, `LVOTPG`, `MVA`, `MCEA`, `MVE`, `TVA`, `TVEA`, `TVE`, `PVPG`, `PVV`, `ReferalReason`, `Diagnosis`, `Comments`) VALUES ('"+aadhar+"', '"+session.getAttribute("userid")+"', '"+session.getAttribute("labid")+"', '"+ft.format(d)+"', '"+RAP+"', '"+IVSD+"', '"+IVSFS+"', '"+IVSS+"', '"+AOROOT+"', '"+LAD+"', '"+LAAO+"', '"+LVVDCUB+"', '"+LVVDTEICH+"', '"+LVIDO+"', '"+FS+"', '"+EFCUD+"', '"+EFTEICH+"', '"+LVVSCUB+"', '"+LVVSTEICH+"', '"+LVIDS+"', '"+SVCUB+"', '"+SVTEICH+"', '"+LVPWD+"', '"+LVPD+"', '"+LVPWS+"', '"+LVD+"', '"+LVS+"', '"+AOLA+"', '"+LVDMASSPENN+"', '"+LVSMASSPENN+"', '"+LVOTV+"', '"+LVOTPG+"', '"+MVA+"', '"+MCEA+"', '"+MVE+"', '"+TVA+"', '"+TVEA+"', '"+TVE+"', '"+PVPG+"', '"+PVV+"', '"+RR+"', '"+DG+"', '"+COM+"')";
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Cardiology Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update Cardiology.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <%}
}%>
   </body>
</html>
