<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
    <title>
        login_config
    </title>
</head>
<%
    ResultSet rs = null;
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String password = request.getParameter("password");


    try

    {

        String sql = "select * from tb_Manager where Name='" + name + "' and Password='" + password + "'";

        rs = connection.executeQuery(sql);
        if (rs.next()) {
            session.setAttribute("username", name);
            session.setAttribute("login", "success");
%>
<script language="javascript">
    alert("登录成功！！！");
</script>
<%
    response.sendRedirect("index.jsp");
} else {%>
<script language="javascript">
    alert("登录失败！！！");
    history.back();
</script>
<%
        }
    } catch (Exception e) {
    }
%>
<body bgcolor="#ffffff">

</body>
</html>
