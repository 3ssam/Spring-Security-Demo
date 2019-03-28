<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<title>Custome Login Form</title>
</head>
<body>
<form:form action="${pageContext.request.contextPath }/authenticateTheUser" method="POST">
<p>
Username <input type="text" name="username"/>
</p>
<p>
Password <input type="password" name="password"/>
</p>
<input type="submit" value="login"/>
</form:form>
</body>
</html>