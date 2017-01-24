<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
</head>
<body>
<div>
	<form action='login.do' method=post>
		<input type="text" name="memberId" id="id" placeholder="아이디를 입력하세요.">
		<input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요."> 
		<input type="submit" value="로그인">
	</form>
</div>

</body>
</html>