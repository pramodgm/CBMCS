<%-- 
    Document   : logout.jsp
    Created on : 28 Apr, 2016, 9:43:52 PM
    Author     : Pramod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="./images/cbms_logo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <% 
            session.setAttribute("userid", null);
            session.setAttribute("labid", null);
            session.setAttribute("aadhar", null);
            session.setAttribute("loginType", null);
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
