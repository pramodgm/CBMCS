<%-- 
    Document   : DiabetesUploadVal
    Created on : 11 May, 2016, 3:48:33 PM
    Author     : Pramod
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
         <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diabetes Upload Validate</title>
    </head>
    <body>
                <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
        <%@ page import ="java.sql.*" %>
    <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            String aadhar=session.getAttribute("aadhar").toString();
            String query="select * from diabetes where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            String FBGP,CHOL,TRY,CHDL,DLC,CHR,LHR,VLDL,COM;
            FBGP=request.getParameter("FBGP");
            CHOL=request.getParameter("CMH");
            TRY=request.getParameter("TMEA");
            CHDL=request.getParameter("CHMEA");
            DLC=request.getParameter("DLCMDM");
            CHR=request.getParameter("CHR");
            LHR=request.getParameter("LHR");
            VLDL=request.getParameter("VLDL");
            COM=request.getParameter("Comments");
            java.util.Date d=new java.util.Date();
            SimpleDateFormat ft=new SimpleDateFormat("dd.MM.yyyy");
            if(rs.next())
            {
                query="UPDATE `diabetes` SET `DocID` = '"+session.getAttribute("userid")+"', `LabID` = '"+session.getAttribute("labid")+"', `DateOfTest` = '"+ft.format(d)+"', `FBGP` = '"+FBGP+"', `CHOLESTROL` = '"+CHOL+"', `TRYGLYCERIDES` = '"+TRY+"', `CHDL` = '"+CHDL+"', `DLC` = '"+DLC+"', `CHR` = '"+CHR+"', `LHR` = '"+LHR+"', `VLDL` = '"+VLDL+"', `COMMENTS` = '"+COM+"' WHERE `diabetes`.`Aadhar` = '"+aadhar+"'";
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Diabetes Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update Diabetes.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <% }}
            else
            {
                query="INSERT INTO `diabetes` (`Aadhar`, `DocID`, `LabID`, `DateOfTest`, `FBGP`, `CHOLESTROL`, `TRYGLYCERIDES`, `CHDL`, `DLC`, `CHR`, `LHR`, `VLDL`, `COMMENTS`) VALUES ('"+aadhar+"', '412285"+session.getAttribute("userid")+"', '"+session.getAttribute("labid")+"', '"+ft.format(d)+"', '"+FBGP+"', '"+CHOL+"', '"+TRY+"', '"+CHDL+"', '"+DLC+"', '"+CHR+"', '"+LHR+"', '"+VLDL+"', '"+COM+"')";
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Diabetes Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update Diabetes.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <%}
}%>
   </body>
</html>
