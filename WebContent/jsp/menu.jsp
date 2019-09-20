<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/menu.css"></link>
</head>
<body>
	<%
		String id = (String) session.getAttribute("id");
		String grant = (String) session.getAttribute("grant");
	%>
	<div class="menubar">
		<ul>
			<li><a href="index.do">Home</a></li>
			<li><a href="#" id="current">마이페이지</a>
				<ul>
					<li><a href="borderList.do">회원정보수정</a></li>
				</ul></li>
			<li><a href="#">도서대여반납</a>
				<ul>
					<li><a href="#">도서대여</a></li>
					<li><a href="#">도서반납</a></li>

				</ul></li>
			<!-- 관리자 권한만 보여주는 메뉴 -->
			<c:if test="${grant == 'S' and id != null}">
				<li><a href="#">관리자</a>
					<ul>
						<li><a href="#">회원관리</a></li>
						<li><a href="#">권한관리</a></li>


					</ul></li>
			</c:if>
			<!-- 관리자 권한만 보여주는 메뉴 끝 -->

			<li><a href="login.do">로그인</a>
			<ul>
					<li><a href="#">회원가입</a></li>
					<li><a href="#"></a></li>

				</ul>
			</li>
		</ul>
	</div>
</body>

</html>