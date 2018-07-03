<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
    <title>
        regist_config
    </title>
</head>
<body bgcolor="#ffffff">
<%
    request.setCharacterEncoding("UTF-8");
    Date date = new Date();
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String sex = request.getParameter("sex");
    String phone = request.getParameter("phone");
    String result = request.getParameter("result");
    String question = request.getParameter("question");
    java.sql.Date showdate = new java.sql.Date(date.getYear(), date.getMonth(), date.getDate());
    String sql = "update tb_Customer set Name='" + name + "',Password='" +
            password + "',Email='" + email + "',Sex='" + sex + "',Phone='" +
            phone + "',Question='" + question + "',Result='" +
            result + "',IssueDate='" + showdate + "' where id=" + request.getParameter("code");
    boolean sert = connection.executeUpdata(sql);
    if (sert) {%>
<script language="javascript">
    alert("修改成功！！！");
    window.location.href = ("member_select.jsp");
</script>
<%
    }
%>
</body>
</html>
