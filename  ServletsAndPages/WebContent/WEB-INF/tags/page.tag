<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ct" uri="http://uni.bg/tags" %>
<%@ attribute name="title" %>
<%@  attribute name="setDate" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<ct:Header title="${title}"/> 
	<jsp:doBody/>
	<ct:Footer/>
	<c:if test="${setDate !=null}">
	<%= new java.util.Date() %>
	</c:if>
</body>
</html>