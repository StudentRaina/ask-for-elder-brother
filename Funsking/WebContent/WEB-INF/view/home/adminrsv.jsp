<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript"
	src="resources/script/jquery/jquery.form.js">
</script>	
<style type="text/css">
.rsv{
	width: 130px;
	height: 20px;
	display:inline-block;	
	vertical-align: top;
	text-align: center;
}
#dd{
	width: 500px;
	height: 800px;

}
</style>
<script type="text/javascript">
$(document).ready(function() {
		getgu();
		getgenre();
		var d= new Date(); 
		console.log(d.getDate());
		//오늘날짜 6일
		console.log(d.getFullYear());
		//년도 2016
		console.log(d.getMonth());
		//10월 17일인데 9월이 나오는 이유:배열로 1~12월 되어있기떄문에  +1안해주면 지난다로나옴
		console.log(d.getDay());
		// 일 월 화 수 목 금 토 일  -> 숫자로나타냄.
		// 0 1 2 3 4 5 6 7
		
			$("#savaBtn").on("click", function() {
				var insertForm= $("#insertForm");
				insertForm.ajaxForm(uploadResultCallBack);
				//아작스를 실행하고나서 uploadresultCallBack을 호출하겟다.
				insertForm.submit();	
			});//저장버튼
});//ready 끝


function getgu(){
	var params = $("#insertForm").serialize();
	$.ajax({ //jquery에 있는 ajax
				type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
				url : "rsvgu",
				dataType : "json",
				data : params,
				success : function(result) {
					var html = "";
					for (var i = 0; i < result.list.length; i++) {
						html += '<option value="' ;
						html += result.list[i].GUCODE+'">';
						html += result.list[i].ATTR;
						html += '</option>';
						//<option value="GUCODE"> attr </option>
						// <tr><tb>gucode</tb><tb>attr</tb></tr>
					}
					$("#gu").html(html);
				},
				error : function(result) {
					alert("응안돼~");
				}
			});// ajax끝
}
function getgenre(){
	var params = $("#insertForm").serialize();
	$.ajax({ //jquery에 있는 ajax
			type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
			url : "genre",
			dataType : "json",
			data : params,
			success : function(result) {
				var html = "";
				for (var i = 0; i < result.list.length; i++) {
					html += '<option value="' ;
					html += result.list[i].GENRE+'">';
					html += result.list[i].ATTR;
					html += '</option>';
					//<option value="rsvgu_gucode"> attr </option>
				}
				$("#genre").html(html);
			},
			error : function(result) {
				alert("응안돼~");
			}
		});// ajax끝
}


function removePre(data){
			if(data.indexOf("<pre>")>-1){
				//데이터의 indexOf -1보다 큰거면 존재하는것.
				var st=data.indexOf(">");
				//꺽세 끝나는부분을 찾고,
				var ed=data.indexOf("<" , st);
				//즉 pre 뺴고 다찾는다.or pre 안에있는거 갖고온다?
				return data.substring(St+1,ed);
			}else{
				return data;
			}
		}//function removePre끝
		
function uploadResultCallBack(data,result){
			if(result=="success"){
				var resData=eval( "(" + removePre(data) + ")" );
				//eval이란 데이터를 용도에맞춰 변형시켜줌 bean형태로 만들어준다???
				console.log($("#pphoto").val());
				console.log($("#dphoto").val());
				console.log($("#epphoto").val());
				$("#pphoto").val(resData.fileName[0]);
				$("#dphoto").val(resData.fileName[1]);
				$("#epphoto").val(resData.fileName[2]);
				var params = $("#insertForm").serialize();
				$.ajax({
					type : "post",
					url : "insertrsv",
					dataType : "json",
					data : params,
					success : function(result) {
						if(result.res=="true"){
							alert("저장성공");
						}else{
							alert("저장중에 문제가 발생함.");
						}
					},
					error : function(result) {
						alert("에ㅔㅇ에에에에에레ㅓㄹ러러러러러러러러러러러럴");
					}

				});
				//textFile에 업로드한 결과파일명을 넣 어 줌 .
			}else{
				alert("저장 안돼~");
			}
		}
		//파일업로드하고나서 글을 저장함.
</script>


</head>
<body>

	<form action="fileUploadAjax" id="insertForm" method="post" enctype="multipart/form-data">
			<div class="rsv">구</div>
				<select id="gu" name="gu">
				</select><br/>
			<div class="rsv">장소</div>
				<input type="text" name="attr" class="rsv"><br/>
			<div class="rsv">예약시간시간</div>
				<input type="text" name="concersche" class="rsv"><br/>
			<div class="rsv">예약끝나는시간</div>
				<input type="text" name="concerschepre" class="rsv"><br/>
			<div class="rsv" class="rsv">지원사항</div>
				<input type="text" name="spt" class="rsv"><br/>
			<div class="rsv">장르</div>
				<select id="genre" name="genre">
				</select><br/>
			<div class="rsv">공연장소사진</div>
				<input type="file" name="att1"><br/>
					<input type="hidden" name="pphoto" id="pphoto" />
			<div class="rsv">상세정보사진</div>
				<input type="file" name="att2"><br/>
					<input type="hidden" name="dphoto" id="dphoto" />
			<div class="rsv">예샹배치도사진</div>
				<input type="file" name="att3"> <br/>
					<input type="hidden" name="epphoto" id="epphoto" />
	</form>
	<input type="button" value="저장" id="savaBtn" />
	<input type="button" value="취소" id="cancleBtn" />
		
	<!-- 	
			pcode	장소 코드
			gucode	예약 구 코드
			spt	지원사항
			genre	장르
			pphoto	공연장소 사진
			dphoto	상세정보사진
			epphoto	예상배치도 사진
			attr	장소 코드 속성
 -->
</body>
</html>