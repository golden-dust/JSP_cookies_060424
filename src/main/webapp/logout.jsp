<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signing out and deleting cookies...</title>
</head>
<body>
	<%
		// 쿠키를 삭제하는 것 = 로그아웃
		
		Cookie[] cookies = request.getCookies();
		
		// 쿠키를 하나씩 가져와서 삭제; ** 주의 ** 클라이언트 쪽에서 삭제되도록! 근데 어떻게 하냐?
		for(int i=0; i < cookies.length; i++) {
			// 쿠키 삭제 방법 : 1. 가져온 쿠키의 유효시간을 0으로 셋팅 -> 2. 다시 클라이언트 컴퓨터에 보냄 -> 받자마자 유효시간 지남 => 삭제 완료!
			cookies[i].setMaxAge(0);		 // step 1
			response.addCookie(cookies[i]);  // step 2
		}
		
		// response.sendRedirect("login.jsp");
	%>
	<hr>
	<a href="login.jsp">로그인 페이지로 이동</a><br>
	<a href="cookieTest.jsp">쿠키 테스트 페이지로 이동</a>
</body>
</html>