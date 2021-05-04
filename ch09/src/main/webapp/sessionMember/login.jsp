<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch09.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	MemberDao md = MemberDao.getInstance();
	int result = md.check(id, password);
	if (result > 0){
		session.setAttribute("id", id);
		response.sendRedirect("main.jsp");
	} else if (result == 0) {
%>
<script type="text/javascript">
	alert("암호도 몰라 ! 꺼져");
	history.go(-1);
</script>
<%  } else { %>
<script type="text/javascript">
	alert("없는 ID인데 수상하다 ! 꺼져");
	history.go(-1); // back()
</script>
<%  } %>
</body>
</html>