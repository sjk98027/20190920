<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function isDateSend(){
	opener.document.frm.pw.focus();
	window.close();
}
</script>
</head>
<body>
${param.id }사용가능한 아이디;
<button type="button" onclick="isDateSend()">확인</button>
</body>
</html>