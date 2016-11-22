<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Zoom Sample</title>
<!-- jQuery Script -->
<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="resources/script/jquery/zoomsl-3.0.min.js"></script>
<style>
/* 돋보기용 스타일  */
.round-loupe {
   border-radius: 75px;
   border: 5px solid #F0F0F0;
}

/* 위치 줌 대상 */
.my-container {
	border: 1px solid #F0F0F0; 
	width: 250px; 
	height: 250px;
}
</style>  
<!-- zoomsl 스크립트 -->
<script type="text/javascript">
$(document).ready(function() {
	//위치 줌
	$("img[name='images']").imagezoomsl({
		descarea: ".my-container", //줌을 나타낼 위치객체				
		zoomrange: [1, 12],
		magnifiereffectanimate: "fadeIn",
		magnifierborder: "none"
	});
	
	//외부 줌
	$("img[name='images2']").imagezoomsl({
		zoomrange: [1, 10], //줌 범위
		magnifiersize: [530, 340], //줌화면 사이즈
		scrollspeedanimate: 10, //스크롤 스피드
		loopspeedanimate: 5, //애니메이션 스피드
		cursorshadeborder: "10px solid #000", //커서 테두리
		magnifiereffectanimate: "slideIn",	//등장 애니메이션(ex : "fadeIn")
		magnifierpos: "right" //줌화면 위치
	});
	
	//이너 줌
	$("img[name='images3']").imagezoomsl({
		zoomrange: [1, 12],
		zoomstart: 4, //시작 줌
		innerzoom: true, //이미지 내 줌으로 전환
		magnifierborder: "none" //두께 없음
	});
	
	//돋보기
	$("img[name='images4']").imagezoomsl({
		innerzoommagnifier: true, //돋보기형
		classmagnifier: window.external ? window.navigator.vendor === "Yandex" ? "" : "round-loupe" : "", //원형
		magnifierborder: "5px solid #F0F0F0",
		zoomrange: [2, 8],
		zoomstart: 4,
		magnifiersize: [150, 150]	
	});
});
</script>
</head>
<body>
	<img alt="피자" name="images" src="resources/images/pic.jpg" data-large="resources/images/pic.jpg"  style="width: 300px; height: 200px;" />
	<div class="my-container"></div>
	<br/>
	<img alt="피자" name="images2" src="resources/images/pic.jpg" data-large="resources/images/pic.jpg"  style="width: 300px; height: 200px;"
	 data-text-bottom="하단 텍스트" />
	<br/>
	<img alt="피자" name="images3" src="resources/images/pic.jpg" data-large="resources/images/pic.jpg"  style="width: 300px; height: 200px;" />
	<br/>
	<img alt="피자" name="images4" src="resources/images/pic.jpg" data-large="resources/images/pic.jpg"  style="width: 300px; height: 200px;" />
</body>
</html>













