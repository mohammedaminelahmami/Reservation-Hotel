<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>Reda !!!</h1>
    <%
        String data = (String)request.getAttribute("myData");
        out.println(data);
    %>
</body>
</html>