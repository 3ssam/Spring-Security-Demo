<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Home Page</title>
</head>
<body>
<h1>
Run Succeeful
</h1>
<h1>User: <security:authentication property="principal.username"/> </h1>
<h1>Roles: <security:authentication property="principal.authorities"/> </h1>
<hr>
<security:authorize access="hasRole('MANAGER')">
<a href="${pageContext.request.contextPath }/leaders">Leadership Meeting</a>
<p>(Only for Manager peeps)</p>
<br>
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
<a href="${pageContext.request.contextPath }/systems">IT Systems Meeting</a>
<p>(Only for Admin peeps)</p>
<hr>
</security:authorize>
<form:form action="${pageContext.request.contextPath }/logout" method="POST">
<input type="submit" value="logout"/>
</form:form>
</body>
</html>