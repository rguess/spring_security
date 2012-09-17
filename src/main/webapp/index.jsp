<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body style="text-align: center;">
	<h1 style="color: red;"><sec:authentication property="name"/></h1>
	index.jsp
	<a href="admin.jsp">admin.jsp</a>
	<a href="j_spring_security_logout">logout</a>
</body>
</html>