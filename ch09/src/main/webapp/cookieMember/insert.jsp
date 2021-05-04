<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch09.*"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	request.setCharacterEncoding("utf-8"); %>
<!-- Member member = new Member() -->
<jsp:useBean id="member" class="ch09.Member"></jsp:useBean>
<!-- id, password, name을 member객체에 setter method를 통하여 저장 -->
<jsp:setProperty property="*" name="member"/>
<%  // sigleton을 이용하여 객체 생성
	MemberDao md = MemberDao.getInstance();
	int result = md.insert(member);  
	if (result > 0) {    %>
	<script type="text/javascript">
		alert("와우! 회원가입 됐네");
		location.href = "loginForm.jsp";
	</script>
<%  } else { %>
	<script type="text/javascript">
		alert("으이그 인간아 ! 똑바로 해");
		history.back();  // 또는 go(-1)
	</script>
<%  } %>
</body>
</html>