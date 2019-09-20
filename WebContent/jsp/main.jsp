
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="menu.jsp"></jsp:include>
<meta charset="utf-8">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<title>슬라이드 연습</title>
<style media="screen">
* {
	margin: 0;
	padding: 0;
}

.slide {
	width: 1000px;
	height: 600px;
	overflow: hidden;
	position: relative;
	margin: 0 auto;
}

.slide ul {
	width: 5000px;
	position: absolute;
	top: 0;
	left: 0;
	font-size: 0;
}

.slide ul li {
	display: inline-block;
}

#back {
	position: absolute;
	top: 250px;
	left: 0;
	cursor: pointer;
	z-index: 1;
}

#next {
	position: absolute;
	top: 250px;
	right: 0;
	cursor: pointer;
	z-index: 1;
}
</style>


</head>
<body>

	<div align="center">

		<h1>이곳은 홈입니다.</h1>
		<div class="slide">
			<img id="back" src="img/back.png" alt="" width="100">
			<ul>
				<li><img src="img/name1.png" alt="" width="1000" height="600"></li>
				<li><img src="img/name2.png" alt="" width="1000" height="600"></li>
				<li><img src="img/name3.png" alt="" width="1000" height="600"></li>
				<li><img src="img/name4.png" alt="" width="1000" height="600"></li>
				<li><img src="img/name5.png" alt="" width="1000" height="600"></li>
			</ul>
			<img id="next" src="img/next.png" alt="" width="100">
		</div>
		세션 Id :
		<%= session.getId() %><br /> 세션 생성 시간 :
		<%= new Date(session.getCreationTime()) %><br /> 세션 최근 접속시간 :
		<%= new Date(session.getLastAccessedTime()) %><br />
		<c:if test="${empty id }">로그인하지 않았습니다</c:if>
		<c:if test="${not empty id }">${id }님 환영합니다.</c:if>


	</div>

</body>

<script type="text/javascript">
    $(document).ready(function(){
      var imgs;
      var img_count;
      var img_position = 1;

      imgs = $(".slide ul");
      img_count = imgs.children().length;

      //버튼을 클릭했을 때 함수 실행
      $('#back').click(function () {
        back();
      });
      $('#next').click(function () {
        next();
      });

      function back() {
        if(1<img_position){
          imgs.animate({
            left:'+=1000px'
          });
          img_position--;
        }
      }
      function next() {
        if(img_count>img_position){
          imgs.animate({
            left:'-=1000px'
          });
          img_position++;
        }
      }


      //이미지 끝까지 가면 버튼 사라지기


      //첫 이미지로 돌아오기


    });
  </script>
<jsp:include page="footer.jsp"></jsp:include>
</html>