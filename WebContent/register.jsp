<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register</title>
</head>
<body>
	<s:form action="register" method="post" namespace="/">
		<s:textfield name="username" label="用户名"></s:textfield>
		<s:password name="password" label="密码"></s:password>
		<s:submit value="register"></s:submit>
	</s:form>
</body>
</html>