<%-- 
    Document   : updateCheckList
    Created on : 1 May, 2016, 1:39:41 PM
    Author     : Pramod
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Check List Page</title>
    </head>
    <body>
        <%@ page import ="java.sql.*" %>
        <%@ page import ="java.util.*" %>
            <% Class.forName("com.mysql.jdbc.Driver");
            PreparedStatement pst;
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs","root", "");
            String aadhar=session.getAttribute("aadhar").toString();
            String DocID=session.getAttribute("userid").toString();
            String query="select * from patientchecklist where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            String haem="NO",sero="NO",lipro="NO",card="NO",urin="NO",dia="NO",aud="NO";
           String [] tests=request.getParameterValues("chklst");
           try {
            for(byte i=0;i<tests.length;i++)
            {
                if(tests[i].equals("Hematology"))
                    haem="YES";
                else if(tests[i].equals("Serology"))
                    sero="YES";
                else if(tests[i].equals("LIPRO"))
                    lipro="YES";
                else if(tests[i].equals("Cardiology"))
                    card="YES";
                else if(tests[i].equals("Urinalysis"))
                    urin="YES";
                else if(tests[i].equals("Diabetes"))
                    dia="YES";
                else if(tests[i].equals("Audiology"))
                    aud="YES";
            }
           } catch(Exception e) {}
            java.util.Date d=new java.util.Date();
            SimpleDateFormat ft=new SimpleDateFormat("dd.MM.yyyy");
            if(rs.next())
            {
                query="UPDATE patientchecklist SET DocID='"+DocID+"',Haematology='"+haem+"',Serology='"+sero+"',Cardiology='"+card+"',Urinalysis='"+urin+"',LIPRO='"+lipro+"',Diabetes='"+dia+"',Audiology='"+aud+"',DateOfUpload='"+ft.format(d)+"' WHERE Aadhar="+aadhar;
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Checklist has been successfully Updated.<a href="CheckList_Doc.jsp"> Click here</a> to go back...</span></div>
                <%} else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Couldn't Update Checklist.<a href="CheckList_Doc.jsp"> Click here</a> to go back...</span></div>
            <%}}
            else
            {
                   query="INSERT INTO `patientchecklist` (`Aadhar`, `DocID`, `DateOfUpload`, `Haematology`, `Serology`, `Cardiology`, `Urinalysis`, `LIPRO`, `Diabetes`, `Audiology`)"
+" VALUES('"+aadhar+"','"+DocID+"','"+ft.format(d).toString()+"','"+haem+"','"+sero+"','"+card+"','"+urin+"','"+lipro+"','"+dia+"','"+aud+"')";
                pst = con.prepareStatement(query);
                int n= pst.executeUpdate();
                if(n==1){
                    %><div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">The Checklist has been successfully Added.<a href="CheckList_Doc.jsp"> Click here</a> to go back...</span></div>
                <% }else{%>
                    <div id="wb_Text1" style="position:absolute;left:347px;top:299px;width:342px;height:28px;z-index:1;text-align:left;">
                        <span style="color:#000000;font-family:'Comic Sans MS';font-size:20px;">Sorry, Could Add Check List.<a href="CheckList_Doc.jsp"> Click here</a> to go back... </span></div>
           <% }} 
            %>
        <img src="images/banner.jpg" id="Banner1" alt="Cloud Based Medical Consultation" style="border-width:0;position:absolute;left:0px;top:0px;width:1366px;height:108px;z-index:0;">
    </body>
</html>
