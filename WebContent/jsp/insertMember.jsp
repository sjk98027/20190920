<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function checkForm() {
	var form = document.frm;
	if(form.id.value==""){
		alert("아이디를 입력해주세요");return false;
	}
	if(form.pw.value==""){
		alert("패스워드를 입력해주세요");return false;
	}
	if(form.name.value==""){
		alert("이름를 입력해주세요");return false;
	}
	
	form.submit();
}
function idCheck(){
	var chkId= document.frm.id;
	if(chkId.value ==""){
		alert("아이디를 입력하세요");
		chkId.focus();
		return false;
	}
	window.open("idCheck.do?id="+chkId.value,"",width="600",height="400");
}

</script>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div align="center">
		<div>
			<h1>회 원 가 입</h1>
		</div>
		<div>
			<form id="frm" name="frm" action="join.do" method="post">
				<table border="1">
					<tr>
						<th width="100">아이디</th>
						<td><input type="text" id="id" name ="id" size="20"><input type="button" onclick="idCheck()" value="중복체크"></td>
						
					</tr>
					<tr>
						<th width="100">패스워드</th>
						<td><input type="text" id="pw" name ="pw" size="20"></td>
					</tr>
					<tr>
						<th width="100">이름</th>
						<td><input type="text" id="name" name ="name" size="20"></td>
					</tr>
					<tr>
						<th width="100">주소</th>
						<td><input type="text" id="addr" name ="addr" size="40"></td>
					</tr>

				</table>
			</form>
		</div>
		<div>
			<input type="button" onclick="checkForm()" value="회원가입">&nbsp;&nbsp;&nbsp;
			<input type="button" onclick="location.href='login.do'" value="취소">&nbsp;&nbsp;&nbsp;
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
