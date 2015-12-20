<%--
  Created by IntelliJ IDEA.
  User: LX
  Date: 2015/12/20
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<h4>用户详细信息</h4>

<div>
    ${user.id}
</div>
<div>
    ${user.userName}
</div>
<div>
    ${user.password}
</div>
<div>
    ${user.age}
</div>
<a href="javascript:window.history.back();">返回</a>
</body>
</html>
