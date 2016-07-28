<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.lang.*, java.text.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Schedule</title>
</head>
<body>
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

<h1>Java Web Development</h1>

<table border ="1px">
<th>Topic</th>
<th>Date</th>
<c:forEach items="${topics}" var="topic">
<tr>
    <td>${topic}</td>
    <td>${c.getTime()}</td>
<% c.add(Calendar.DATE, 7); %>
</tr>
</c:forEach>
</table>

</body>
</html>