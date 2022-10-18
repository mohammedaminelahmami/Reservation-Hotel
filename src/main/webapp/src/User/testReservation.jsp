<%@ page import="java.util.List" %>
<%@ page import="com.example.hotelkharboucha.Room.Room" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 10/18/2022
  Time: 9:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>this is test page !</h1>
    <%
        Room room = new Room();
        out.print(room.getDescription());
    %>
</body>
</html>