<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true"
    pageEncoding="UTF-8"%>
<%@page import="org.gtiles.core.web.validator.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<body>

<%
	if(exception instanceof org.gtiles.core.web.token.TokenValidException){
		out.print("令牌验证失效，请确认是否进行了重复提交操作。");
	}else if(exception instanceof ValidationException){
		ValidationException validationException = (ValidationException)exception;
		StringBuilder strBuilder  = new StringBuilder();
		for (ValidationError error : validationException.getErrors()) {
			strBuilder.append(error+"；");
		}
		out.print("字段验证失败:" + strBuilder.toString());
	}else{
		out.print("出错了:"+exception);
	}
%>
</body>
</html>
