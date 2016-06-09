<%-- 
    Document   : getImage
    Created on : 10 Apr, 2016, 6:02:38 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <%@ page import="java.sql.*" %>
        <%@ page import="java.io.*" %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emrmcs",
                    "root", "");
            PreparedStatement pst;
            InputStream sImage;
            String docID=session.getAttribute("userid").toString();
            String query="select * from docprofile where doctorID="+docID; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            rs.next();
            byte[] bytearray = new byte[1048576];
            int size=0;
            sImage = rs.getBinaryStream("picture");
            response.setContentType("image/jpeg");
            while((size=sImage.read(bytearray))!= -1 ){
                response.getOutputStream().write(bytearray,0,size);
            }
        %>
