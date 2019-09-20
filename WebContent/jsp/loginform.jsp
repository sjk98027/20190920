<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript">
		function checkForm() {
			var form = document.frm;
			if (form.id.value == "") {
				alert("아이디를 입력해주세요");
				frm.id.focus();
				return false;
			}
			if (form.pw.value == "") {
				alert("패스워드를 입력해주세요");
				frm.pw.focus();
				return false;
			}
			form.submit();
		}
	</script>

</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<% String id = (String) session.getAttribute("id"); %>
	<div align="center">

		<h1>로그인 폼</h1>
<c:if test="${empty id }">

		<div>
			<form id="frm" name="frm" action="loginCheck.do" method="post">
				<table border="1">
					<tr>
						<th width="100" align="center">아이디</th>
						<td><input type="text" id="id" name="id" size="20"></td>

					</tr>
					<tr>
						<th width="100" align="center">패스워드</th>
						<td><input type="text" id="pw" name="pw" size="20"></td>
					</tr>

				</table>
				<p>

					<input type="button" onclick="checkForm()" value="로그인">&nbsp;&nbsp;&nbsp;
					<input type="reset" value="취소">&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="location.href='insertMember.do'">회원가입</button>
			</form>
		</div>
		</c:if>
		
		<c:if test="${not empty id  }">
		<h1>${id }님이 이미 로그인 하셧습니다.</h1>
		<form id = "frm1" name="frm1" action="logout.do" method="post">
		<input type="submit" value="logout"> &nbsp;&nbsp;&nbsp;
		<input type="reset" value="취소"> &nbsp;&nbsp;&nbsp;
		
		
		</form>		
		
		</c:if>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>