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
/*  text-align: center;*/
}
#dd{
	width: 500px;
	height: 800px;
}
#choose{
	width: 130px;
	height: 20px;
	display:inline-block;	
	vertical-align: top;
}
#insertplace{
	width: 400px;
	height: 300px;
	display:none;	
	vertical-align: top;
}
#insertsche{
	width: 400px;
	height: 300px;
	display:inline-block;	
	vertical-align: top;
}

.insert{
	width: 200px;
	height: 100px;
	display:inline-block;	
	vertical-align: top;
}

.Btn{
	color:black;
}
</style>
<script type="text/javascript">
$(document).ready(function() { 
		getgu();
		getgenre();
		$("#placeBtn").attr("disabled",false);
		$("#scheBtn").attr("disabled",true);
		$("#scheBtn").css("background-color","rgb(142, 68, 173)");
		$("#placeBtn").on("click",function(){
			$("#placeBtn").attr("disabled",true);
			$("#scheBtn").attr("disabled",false);
			$("#scheBtn").css("background-color","none");
			$("#placeBtn").css("background-color","rgb(142, 68, 173)");
			$("#insertplace").css("display","block");
			$("#insertsche").css("display","none");
			$("input[name=checkdate]").prop("checked",false);
			$(".rsv").val("");
			
			//버튼 비활성화
		});
		$("#scheBtn").on("click",function(){
			$("#placeBtn").attr("disabled",false);
			$("#scheBtn").attr("disabled",true);
			$("#scheBtn").css("background-color","rgb(142, 68, 173)");
			$("#placeBtn").css("background-color","none");
			$("#insertplace").css("display","none");
			$("#insertsche").css("display","block");
			$(".rsv").val("");
			
		});
		
		$("#se1").on("change", function() {
			checkgu();
		});
			$("#savaBtn").on("click", function() {
				if($('input:checkbox[name="checkdate"]:checked').length>0){
					insertsche();
				}else {
				var insertForm= $("#insertForm");
				insertForm.ajaxForm(uploadResultCallBack);
				//아작스를 실행하고나서 uploadresultCallBack을 호출하겟다.
				insertForm.submit();
				}
			});//저장버튼
});//ready 끝

function insertsche(){
	var test = "";
		$("input[name=checkdate]:checked").each(function() {
		   test += $(this).val()+",";
		});
	var str = test.substr(0,test.length-1);
	var strArray = str.split(',');
	//console.log(test+"test");
	var sche = $("#sche").val();
	var schestr = sche.substr(0,sche.length);
	var scheArray = schestr.split(',');
	$("[name=scheArray]").val(scheArray);
	$("[name=strArray]").val(strArray);
	/* var sche = $("#sche").val();
	scheArray = sche.split('~');
	var time = parseInt(scheArray[0]); */
	//for(var k = 0 ; k < strArray.length ; k ++){
		//요일 체크한것의 횟수  일 ,월 선택시 length는 2
		//for(var i = 0 ; i < scheArray.length ; i ++){
			//14~18일시 몇번실행하는것을 찾아냄.
		//$("[name=checkdate]").val(strArray[k]);
			//요일의 value값
		//$("[name=sche]").val(scheArray[i]);
			//14~17로 시간설정할시 짤라서 넣어줌.
		var params = $("#insertForm").serialize();
		$.ajax({ //jquery에 있는 ajax
					type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
					url : "insertsche",
					dataType : "json",
					data : params,
					success : function(result) {
						if(result.res=="true"){
							alert("저장성공");
							location.href="adminrsv";
						}else{
							alert("저장중에 문제가 발생함.");
						}
					},
					error : function(result) {
						alert("에ㅔㅇ에에에에에레ㅓㄹ러러러러러러러러러러러럴");
					}
				});// ajax끝
		//}//안쪽 for문 끝
	//}//바깥 for 끝
};





function getgu(){
	if($("#se1").val() != 0 || $("#gu").val() != 0){
	var params = $("#insertForm").serialize();
	$.ajax({ //jquery에 있는 ajax
				type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
				url : "rsvgu",
				dataType : "json",
				data : params,
				success : function(result) {
					var html ='<option value="">=구=</option>'
					for (var i = 0; i < result.list.length; i++) {
						html += '<option value="' ;
						html += result.list[i].GUCODE+'">';
						html += result.list[i].ATTR;
						html += '</option>';
						//<option value="GUCODE"> attr </option>
						// <tr><tb>gucode</tb><tb>attr</tb></tr>
					}
					$("#gu").html(html);
					$("#se1").html(html);
				},
				error : function(result) {
					alert("응안돼~");
				}
			});// ajax끝
	}else{
		$("#se2").val("");
		$("#se2").html("");
	}
	}//if 끝
	// 구 얻어오는 function 끝





function getgenre(){
	var params = $("#insertForm").serialize();
	$.ajax({ //jquery에 있는 ajax
			type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
			url : "genre",
			dataType : "json",
			data : params,
			success : function(result) {
				var html = '<option value="">=장르=</option>';
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
}//장르를 보여주는 function 끝

function checkgu() {
	if ($("#se1").val() != 0) {
		var params = $("#insertForm").serialize();
		$.ajax({ //jquery에 있는 ajax
					type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
					url : "rsvplace",
					dataType : "json",
					data : params,
					success : function(result) {
						var show = "";
						var html = '<option value="">=장소=</option>'
						for (var i = 0; i < result.list.length; i++) {
							html += '<option value="' ;
							html += result.list[i].PCODE+'">'; 
							html += result.list[i].BATTR;
							html += '</option>';
							show = result.list[0].ATTR;
							//<option value="pcode"> 장소 </option>
							// show = xx구 
						}
						$("#se2").html(html);
					},
					error : function(result) {
						alert(result.responseText);
					}
				});// ajax끝
	}else{
		$("#se2").html("");
		$("#se2").val("");
	}//if 끝
}//function checkgu 끝 구선택시 장소 자동으로갖고옴.


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
							location.href="adminrsv";
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
	<input type="button" value="선택보기"id="seeBtn"  class="Btn"/>
	<input type="button" value="스케쥴 입력" id="scheBtn"  class="Btn"/>
	<input type="button" value="장소 입력" id="placeBtn" class="Btn"/>
	<form action="fileUploadAjax" id="insertForm" method="post" enctype="multipart/form-data">
	
		<div id="insertsche" class="insert">
			<div class="rsv">구</div>
				<select id="se1" name="se1"></select><br />
			<div class="rsv">장소</div>
				<select id="se2" name="se2"></select><br />
			<div class="rsv">공연일자</div>
				<!-- <input type="text" name="sche"> <br /> -->
				<input type="checkbox" value="0" name="checkdate">일
				<input type="checkbox" value="1" name="checkdate">월
				<input type="checkbox" value="2" name="checkdate">화
				<input type="checkbox" value="3" name="checkdate">수
				<input type="checkbox" value="4" name="checkdate">목
				<input type="checkbox" value="5" name="checkdate">금
				<input type="checkbox" value="6" name="checkdate">토
				<input type="hidden" value="" name="scheArray">
				<input type="hidden" value="" name="strArray">
			<!-- 		<input type="text" name="attr" class="rsv"><br/>(0:일,1:월,2:화,3:수,4:목,5:금,6:토)<br/> -->
			<div class="rsv">공연시간</div>
				<input type="text" name="sche" class="rsv" id="sche"><br />
		</div>
		
		
		<div id="insertplace" class="insert">
			<div class="rsv">구</div>
				<select id="gu" name="gu"></select><br />
			<div class="rsv">장소</div>
				<input type="text" name="attr" class="rsv"><br />
			<div class="rsv" class="rsv">지원사항</div>
				<input type="text" name="spt" class="rsv"><br />
			<div class="rsv">장르</div>
				<select id="genre" name="genre"></select><br />
			<div class="rsv">공연장소사진</div>
				<input type="file" name="att1"><br /> 
				<input type="hidden" name="pphoto" id="pphoto" />
			<div class="rsv">상세정보사진</div>
				<input type="file" name="att2"><br /> 
				<input type="hidden"
				name="dphoto" id="dphoto" />
			<div class="rsv">예샹배치도사진</div>
				<input type="file" name="att3"> <br /> 
				<input type="hidden"name="epphoto" id="epphoto" />
		</div>
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