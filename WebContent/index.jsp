<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.*" %>
<%-- <%@taglib prefix="s" uri="http://www.springframework.org/tags" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<body>
<c:if test="${param.code != null}">
	<%-- <div><s:message code="${param.code}" /></div> --%>
</c:if>
<form method="post" action="./login">
	登录名：<input type="text" name="username"><br>
	密&#12288;码：<input type="password" name="password">
	<!-- <input type="checkbox" name="remember_me" />remember me -->
	<%-- <input type="submit" value="<s:message code="login" />"> --%>
	  <!-- <select name="locale">
		<option value="zh_CN" selected>简体中文</option>
		<option value="en_US">英文</option>
	  </select> -->
	<p><input type="submit" value="登录">
</form>

</body>
</html>
