<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
    <title>
        placard_show_config page
    </title>
</head>
<%!
    String sql;
    Date date = new Date();
%>
<body bgcolor="#ffffff">
<%
    request.setCharacterEncoding("UTF-8");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String author = request.getParameter("author");
    java.sql.Date datatime = new java.sql.Date(date.getYear(), date.getMonth(), date.getDate());
    sql = "insert into tb_logistics (Title,Content,Author,IssueDate) values('" + title + "','" + content + "','" + author + "','" + datatime + "')";
    boolean bb = connection.executeUpdata(sql);
    if (bb) {%>
<script language="javascript">
    alert("您输入的动态信息已经存储完成！！！");
</script>
<%
    response.sendRedirect("active_select.jsp");
} else {
%>
<script language="javascript">
    alert("您输入的动态信息存储失败！！！");
    history.back();
</script>
<%
    }
%>
</body>
</html>
