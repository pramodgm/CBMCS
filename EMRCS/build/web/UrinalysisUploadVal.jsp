<%-- 
    Document   : UrinalysisUploadVal
    Created on : 11 May, 2016, 7:37:33 AM
    Author     : Pramod
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>                <link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Urinalysis Upload Validate</title>
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
            String color,appear,PH,SG,glucose,protein,ketones,blood,bilirubin,urobilinogen,nitrite,wbc,EC,RBC,casts,crystals,bacteria,remarks;
            color=request.getParameter("Color").toString();
            appear=request.getParameter("Appearence").toString();
            PH=request.getParameter("PH").toString();
            SG=request.getParameter("SG").toString();
            glucose=request.getParameter("Glucose").toString();
            protein=request.getParameter("Protrin").toString();
            ketones=request.getParameter("Ketones").toString();
            blood=request.getParameter("Blood").toString();
            bilirubin=request.getParameter("Bilirubin").toString();
            urobilinogen=request.getParameter("Urobilibogen").toString();
            nitrite=request.getParameter("Nitrite").toString();
            wbc=request.getParameter("WBC").toString();
            EC=request.getParameter("EC").toString();
            RBC=request.getParameter("RBC").toString();
            casts=request.getParameter("Casts").toString();
            crystals=request.getParameter("Crystals").toString();
            bacteria=request.getParameter("Bacteria").toString();
            remarks=request.getParameter("Comments").toString();
            java.util.Date d=new java.util.Date();
            SimpleDateFormat ft=new SimpleDateFormat("dd.MM.yyyy");
            if(rs.next())
            {
                query="UPDATE `urinalysis` SET `DocID` = '"+session.getAttribute("userid")+"', `DateOfTest` = '"+ft.format(d)+"', `LabID` = '"+session.getAttribute("aadhar")+"', `Color` = '"+color+"', `pH` = '"+PH+"', `SpecificGravity` = '"+SG+"', `Glucose` = '"+glucose+"', `Protein` = '"+protein+"', `Ketones` = '"+ketones+"', `Blood` = '"+blood+"', `Bilirubin` = '"+bilirubin+"', `Urobilinogen` = '"+urobilinogen+"', `Nitrite` = '"+nitrite+"', `Wbc` = '"+wbc+"', `EpithelialCells` = '"+EC+"', `RedBloodCells` = '"+RBC+"', `Casts` = '"+casts+"', `Crystals` = '"+crystals+"', `Bacteria` = '"+bacteria+"', `Remarks` = '"+remarks+"' WHERE `urinalysis`.`Aadhar` = '"+aadhar+"'";
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Urinalysis Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update Urinalysis.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <% }}
            else
            {
                query="INSERT INTO `urinalysis` (`Aadhar`, `DocID`, `DateOfTest`, `LabID`, `Color`, `Appearance`, `pH`, `SpecificGravity`, `Glucose`, `Protein`, `Ketones`, `Blood`, `Bilirubin`, `Urobilinogen`, `Nitrite`, `Wbc`, `EpithelialCells`, `RedBloodCells`, `Casts`, `Crystals`, `Bacteria`, `Remarks`) VALUES ('"+aadhar+"', '"+session.getAttribute("userid")+"', '"+ft.format(d)+"', '"+session.getAttribute("labid")+"', '"+color+"', '"+appear+"', '"+PH+"', '"+SG+"', '"+glucose+"', '"+protein+"', '"+ketones+"', '"+blood+"', '"+bilirubin+"', '"+urobilinogen+"', '"+nitrite+"', '"+wbc+"', '"+EC+"', '"+RBC+"', '"+casts+"', '"+crystals+"', '"+bacteria+"', '"+remarks+"')";
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Urinalysis Report has been successfully Updated.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update Urinalysis.<a href="CheckList_lab.jsp"> Click here</a> to go back...</span></div>
            <%}
}%>
    </body>
</html>
