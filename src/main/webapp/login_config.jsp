<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
    <title>login_config</title>
</head>
<%
    ResultSet rs = null;
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    if (name == "" && name == null && password == "" && password == null) {
%>
<jsp:forward page="index.jsp"/>
<%
} else {
    try {
        String sql = "select * from tb_Customer where Name='" + name + "' and Password='" + password + "'";
        rs = connection.executeQuery(sql);
        if (rs.next()) {
            String Name = rs.getString("Name");
            session.setAttribute("name", Name);
            session.setAttribute("login", "success");
%>
<script language="javascript">
    alert("登录成功！！！");
    window.location.href = "index.jsp";
</script>
<%
} else {
%>
<script language="javascript">
    alert("登录失败！！！");
    history.back();
</script>
<%
            }
        } catch (Exception e) {
            System.out.println("连接异常login_config");
        }
    }
%>
<body bgcolor="#ffffff">
</body>
</html>
