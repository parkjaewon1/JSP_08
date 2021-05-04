<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%  //                        속성   값    
	Cookie cook = new Cookie("id", "hong");
// 생략하면 브라우저를 닫으면 쿠키 사용종료
 	cook.setMaxAge(60*2);  // 초단위 쿠키 사용시간
 	response.addCookie(cook);
%>
<h2>쿠키 생성</h2>
<a href="cookieUse.jsp">쿠키 값 확인</a>
</body>
</html>