<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<html>
<head>
<title>Custome Login Form</title>
</head>
<body>
<form:form action="${pageContext.request.contextPath }/authenticateTheUser" method="POST">
<c:if test="${param.error != null }">
<h3>Sorry the username or passsword is incorrect please enter them again</h3>
</c:if>
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