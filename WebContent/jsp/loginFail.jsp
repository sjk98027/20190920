<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div align="center">
<h1>${param.id }는 존재하지 않는 아이디입니다.</h1>
<button onclick="location.href='login.do'">다시 로그인하기	</button><p>
</div>
<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>