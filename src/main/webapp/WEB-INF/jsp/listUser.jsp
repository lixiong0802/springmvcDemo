<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2015/12/20
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String baseURL = request.getContextPath();
    request.setAttribute("baseURL", baseURL);
%>
<html>
<head>
    <title></title>
</head>
<body>
<h4>用户列表</h4>
<c:if test="${empty list}">
    <div>暂无数据</div>
</c:if>

<c:forEach items="${list}" var="item">
    <div>用户名：${item.userName}，密码：${item.password}，年龄：${item.age}：操作：
        <a href="${baseURL}/user/showUser?id=${item.id}">查看</a>
        <a href="${baseURL}/user/showUser?id=${item.id}">修改</a>
        <a href="${baseURL}/user/showUser?id=${item.id}">删除</a>
    </div>
</c:forEach>

</body>
</html>
