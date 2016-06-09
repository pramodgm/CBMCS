<%-- 
    Document   : SerologyUploadVal
    Created on : 10 May, 2016, 8:41:44 PM
    Author     : Pramod
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
         <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Serology Upload Validate</title>
    </head>
    <body>
                <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
        <%@ page import ="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar=session.getAttribute("aadhar").toString();
            String query="select * from serology where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            String WIDl,sTyphiO,sTyphiH,sPTyphiAH,sPTyphiBH, RAF, ASO, CRP, VDRL,HIV,HBS,MT;
            WIDl=request.getParameter("WIDAL");
            sTyphiO=request.getParameter("sTyphiO").toString();
            sTyphiH=request.getParameter("sTyphiH").toString();
            sPTyphiAH=request.getParameter("sPTyphiAH").toString();
            sPTyphiBH=request.getParameter("sPTyphiBH").toString();
            RAF=request.getParameter("RAF").toString();
            ASO=request.getParameter("ASO").toString();
            CRP=request.getParameter("CRP").toString();
            VDRL=request.getParameter("VDRL").toString();
            HIV=request.getParameter("HIV").toString();
            HBS=request.getParameter("Hbs").toString();
            MT=request.getParameter("MT").toString();
            java.util.Date d=new java.util.Date();
            SimpleDateFormat ft=new SimpleDateFormat("dd.MM.yyyy");
            if(rs.next())
            {
                query="UPDATE `serology` SET `DocID` = '"+session.getAttribute("userid")+"', `LabID` = '"+session.getAttribute("labid")+"', `DateOfTest` = '"+ft.format(d)+"', `widal` = '"+WIDl+"', `styphiO` = '"+sTyphiO+"', `styphiH` = '"+sTyphiH+"', `sparatyphiAH` = '"+sPTyphiAH+"', `soaratyphiBH` = '"+sPTyphiBH+"', `rafactor` = '"+RAF+"', `aso` = '"+ASO+"', `crp` = '"+CRP+"', `vdrl` = '"+VDRL+"', `hiv` = '"+HIV+"', `hbs` = '"+HBS+"', `monotouxtest` = '"+MT+"' WHERE `serology`.`Aadhar` = "+aadhar;
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Serology Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update Serology.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <% }}
            else
            {
                query="INSERT INTO `serology` (`Aadhar`, `DocID`, `LabID`, `DateOfTest`, `widal`, `styphiO`, `styphiH`, `sparatyphiAH`, `soaratyphiBH`, `rafactor`, `aso`, `crp`, `vdrl`, `hiv`, `hbs`, `monotouxtest`) VALUES ('"+aadhar+"', '"+session.getAttribute("userid")+"', '"+session.getAttribute("labid")+"', '"+ft.format(d)+"', '"+WIDl+"', '"+sTyphiO+"', '"+sTyphiH+"', '"+sPTyphiAH+"', '"+sPTyphiBH+"', '"+RAF+"', '"+ASO+"', '"+CRP+"', '"+VDRL+"', '"+HIV+"', '"+HBS+"', '"+MT+"')";
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Serology Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update Serology.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <%}
}%>
   </body>
</html>
