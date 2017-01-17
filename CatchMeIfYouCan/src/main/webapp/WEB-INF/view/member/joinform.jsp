<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
<div>
	<form action='<c:url value="/member/join.do"/>' method = post>
		<div>
			<input type="text" name="memberId" id="id" placeholder="아이디를 입력하세요.">
		</div>
		<div>
			<input type="text" name="password" id="password" placeholder="비밀번호를 입력하세요.">
		</div>
		<div>
			<input type="text" name="userName" id="username" placeholder="이름을 입력하세요.">
		</div>
		<div>
			<input type="text" name="email" id="email" placeholder="이메일을 입력하세요.">
		</div>
		<div>
			<input type="text" name="job" id="job" placeholder="직업을 입력하세요.">
		</div>
		<div>
			<input type="submit" value="완료">
			<input type="reset" value="취소">
		</div>
	</form>
</div>
</body>
</html>