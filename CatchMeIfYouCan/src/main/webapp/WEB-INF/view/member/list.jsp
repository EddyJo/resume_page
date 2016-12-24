<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 리스트</title>
</head>
<body>
<h2>회원 리스트</h2>
<table>
<c:forEach var="member" items="${memberList}">
	<tr>
	<td>${member.getMemberId()}</td>
	<td>${member.getUserName()}</td>
	<td>${member.getJob()}</td>
	<td>${member.getJoin_date()}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>