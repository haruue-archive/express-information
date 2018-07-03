<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
    <title>
        Goods_delete page
    </title>
</head>
<body bgcolor="#ffffff">
<%

    String sql = "delete from tb_logistics where ID=" + request.getParameter("id");
    boolean dele = connection.executeUpdata(sql);
    if (dele) {
%>
<script language="javascript">
    alert("删除成功！！！");
</script>
<%
    response.sendRedirect("active_select.jsp");
} else {
%>
<script language="javascript">
    alert("删除失败！！！");
    history.back();
</script>
<%
    }
%>
</body>
</html>
