<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sign in confirmation</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String mid = request.getParameter("id");
		String mpw = request.getParameter("pw");
		
		if (mid.equals("tiger") && mpw.equals("12345")) {
			Cookie cookie1 = new Cookie("cookieID", mid);  // 인수 2개: 쿠키 이름, 값
			Cookie cookie2 = new Cookie("cookiePW", mpw);
			
			response.addCookie(cookie1);  // 서버에서 생성된 쿠키1을 클라이언트 컴퓨터 웹브라우저로 전송
			response.addCookie(cookie2);
			
			response.sendRedirect("loginSuccess.jsp");
			// 로그인 성공하면 loginSuccess.jsp 페이지로 강제 이동
			
		} else {
			response.sendRedirect("loginFail.jsp");
		}
		
	%>

</body>
</html>