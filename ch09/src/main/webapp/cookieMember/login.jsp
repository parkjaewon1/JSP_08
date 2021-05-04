<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch09.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	MemberDao md = MemberDao.getInstance();
	int result = md.check(id, password); 
	if (result > 0) {
		//                  속성(변수명)  값(k1, k2)
		Cookie cook = new Cookie("id", id);
		response.addCookie(cook);
		response.sendRedirect("main.jsp");
	} else if (result == 0) { %>
	<script type="text/javascript">
		alert("암호를 모르네! 다시한번 암호!!!!");
		history.go(-1);
	</script>
<%  } else { %>
	<script type="text/javascript">
		alert("넌 누구냐 ! 없는 ID야 혹시 스파이 암호!!!!");
		history.go(-1);
	</script>
<%  } %>
</body>
</html>