<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${students}" var="s">
		<c:out value="${s.id}"></c:out>
		<c:out value="${s.name}"></c:out><br>
	</c:forEach>
	
	<hr>
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/javadb" user="root" password="root"/>
	<sql:query var="rs" dataSource="${db}" sql="select * from student"></sql:query>
	
	<c:forEach items="${rs.rows}" var="student">
		<c:out value="${student.SID}"></c:out> : <c:out value="${student.SName}"></c:out> : <c:out value="${student.SPlace}"></c:out>
		<br>
	</c:forEach>
	<hr>
	<c:set var="str" value="Hello Eveyone, This is string"></c:set>
	Original String : ${str}<br>
	Length : ${fn:length(str)}<br>
	index : ${fn:indexOf(str, "is")}<br>
	<c:if test="${fn:contains(str, 'Hello')}">
		Yes, it is there
	</c:if><br>
	Splitted String : <c:forEach items="${fn:split(str,' ')}" var="s">
		<c:out value="${s}"></c:out><br>
	</c:forEach>
	
</body>
</html>