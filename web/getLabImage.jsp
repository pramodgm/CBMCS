<%-- 
    Document   : getLabImage
    Created on : 1 May, 2016, 10:42:46 AM
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
            String userid=session.getAttribute("labid").toString();
            String query="select * from labprofile where labID='"+userid+"'"; 
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