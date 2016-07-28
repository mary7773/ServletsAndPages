<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.lang.*, java.text.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="ct" uri="http://uni.bg/tags" %>
<c:set var="setDate" value="<%= new java.util.Date() %>"/>
<% String[] topics = {"Web Development Basics", "Servlets and Pages", 
		"Containers, Filters and Sessions", "Enterprise Java Beans", 
		"Spring Core", "Spring MVC", "Spring Security", "Oracle Database",
		"Java Persistence"}; 
		
String startDate = "2016-01-14";
SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
Calendar c = Calendar.getInstance();
Date date = new Date();	
try {
	 date = ft.parse(startDate);
	 c.setTime(date);
} catch (ParseException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
pageContext.setAttribute("topics", topics);	
pageContext.setAttribute("c", c);	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Schedule</title>
</head>
<ct:page>
<jsp:body>
<ct:Header  title="Java Web Development"/>

<table border ="1">
<th>Topic</th>
<th>Date</th>
<c:forEach items="${topics}" var="topic">
<tr>
    <td>${topic}</td>
    <td>${c.getTime()}</td>
</tr>
</c:forEach>
</table>
<ct:Footer/>
</jsp:body>
</ct:page>
</html>