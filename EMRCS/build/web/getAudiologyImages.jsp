<%-- 
    Document   : getAudiologyImages
    Created on : 9 Jun, 2016, 5:47:15 PM
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
            String aadhar=session.getAttribute("aadhar").toString();
            String query="select * from audiometry where Aadhar="+aadhar; 
            pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            rs.next();
            byte[] bytearray = new byte[1048576];
            int size=0;
            sImage = rs.getBinaryStream(request.getParameter("imageid"));
            response.setContentType("image/jpeg");
            while((size=sImage.read(bytearray))!= -1 ){
                response.getOutputStream().write(bytearray,0,size);
            }
        %>
