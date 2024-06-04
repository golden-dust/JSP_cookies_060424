<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sign in completed</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		// 쿠키 가져오기 -> 클라이언트 컴퓨터에 저장되어있는 쿠키들을 한 번에 배열형태로 서버 컴퓨터로 가져옴
		
		for (int i=0; i < cookies.length; i++) {
			out.println("쿠키의 이름: " + cookies[i].getName() + "<br>");
			out.println("쿠키의 값: " + cookies[i].getValue() + "<br>");
		}
	%>
	<h3>login success</h3>
	<hr>
	로그인에 성공하셨습니다!<br><br>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>