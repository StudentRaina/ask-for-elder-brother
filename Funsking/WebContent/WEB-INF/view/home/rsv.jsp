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
	
<style type="text/css">
.rsv {
   display:inline-block;   
   vertical-align: top;
   width: 200px;
   height: 40px;
}
/*select하는 곳 3개*/

.rsvselect{
   display:inline-block;   
   vertical-align: top;
   width: 200px;
   height: 40px;
   font-size: 15pt;
   font-weight:bold;
   text-align: center;
   
}
/*구 , 장소 , 시간 보여주는 틀  */


.showselect{
   display:inline-block;
   vertical-align: top;
   width: 200px;
   height: 40px;
}
/* select하는곳 의 겉 div*/

.btn{
	color:black;
	font-size : 14pt;
   display:inline-block;
   vertical-align: top;
   width: 100px;
   height: 40px;
}

</style>
	
	
	
	
	
<script type="text/javascript">
	$(document).ready(function() {
		$("#showplace").css("background-color","rgb(142, 68, 173)");
		$("#showplace").attr("disabled",true);
		//버튼 클릭 비활성화
						var params = $("#dataForm").serialize();
						$.ajax({ //jquery에 있는 ajax
									type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
									url : "rsvgu",
									dataType : "json",
									data : params,
									success : function(result) {
										var html = '<option value="">=구=</option>'
										for (var i = 0; i < result.list.length; i++) {
											html += '<option value="' ;
											html += result.list[i].GUCODE+'">';
											html += result.list[i].ATTR;
											html += '</option>';
											//<option value="rsvgu_gucode"> attr </option>
										}
										$("#se1").html(html);
									},
									error : function(result) {
										alert("응안돼~");
									}
								});// ajax끝
						$("#showplace").on("click", function() {
							$("#showplace").attr("disabled",true);
							$("#showdate").attr("disabled",false);
							//버튼 비활성화
							$("#place").css("display", "block");
							$("#showplace").css("background-color","rgb(142, 68, 173)");
							$("#showdate").css("background-color","none");
							$("#dse1").val("");
							$("#dse2").val("");
							$("#dse2").html("");
							$("#dse3").val("");							
							$("#dse3").html("");
							$("#d1").html("일자");
							$("#d2").html("");
							$("#d3").html("");
							// 장소순 가리고 날짜순 show
							$("#date").css("display", "none");
						});
						$("#showdate").on("click", function() {
							$("#showplace").attr("disabled",false);
							$("#showdate").attr("disabled",true);
							$("#place").css("display", "none");
							$("#showdate").css("background-color","rgb(142, 68, 173)");
							$("#showplace").css("background-color","none");
							$("#se1").val("");
							$("#se2").val("");
							$("#se2").html("");
							$("#se3").val("");
							$("#se3").html("");
							$("#p1").html("구");
							$("#p2").html("");
							$("#p3").html("");
							
							// 날짜순 가리고 장소순 show
							$("#date").css("display", "block");
						});
						SelectDate();
					
						$("#se1").on("change", function() {
							checkgu();
							$("#se2").val("");
							$("#se2").html("");
							$("#se3").val("");
							$("#se3").html("");
							$("#p2").html("");
							$("#p3").html("");
						});
						$("#se2").on("change", function() {
							SelectDate1();
//							checkplace();
							$("#p2").html($("#se2 option:selected").text());	
							$("#p3").html("");
						});
						$("#se3").on("change", function() {
							$("#p3").html($("#se3").val());
						});
						$("#dse1").on("change",function(){
							showgu();
						});
						$("#dse2").on("change",function(){
							showplace();
						});
						$("#dse3").on("change",function(){
							$("#d3").html($("#dse3 option:selected").text());
						});
					});//ready 끝

	function checkgu() {
		if ($("#se1").val() != 0) {
			var params = $("#dataForm").serialize();
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
							$("#p1").html(show);
						},
						error : function(result) {
							alert(result.responseText);
						}
					});// ajax끝
		} else {
			$("#p1").html("구");
		}//if 문 끝
	}//function checkug 끝
	
function checkplace(){
	if ($("#se2").val() != 0) {
		var params = $("#dataForm").serialize();
		$.ajax({ //jquery에 있는 ajax
					type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
					url : "rsvplace2",
					dataType : "json",
					data : params,
					success : function(result) {
						var show = "";
						var html = '<option value="">=일=</option>'
						for (var i = 0; i < result.list.length; i++) {
							html += '<option value="' ;
							html += result.list[i].CONCERTSCHE+'">'; 
							html += result.list[i].CONCERTSCHE;
							html += '</option>';
							show = result.list[0].ATTR;
							//<option value="1"> 강남구청 </option>
						}
						$("#p2").html($("#se2 option:selected").text());	
						$("#se3").html(html);
					},
					error : function(result) {
						alert(result.responseText);
					}
				});// ajax끝
	} else {
		$("#p1").html("구");
		$("#p2").html("장소");
		
	}//if 문 끝
}//function checkplace끝
	
function showgu(){
	var params = $("#dataForm1").serialize();
	
	$.ajax({ //jquery에 있는 ajax
				type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
				url : "rsvgu",
				dataType : "json",
				data : params,
				success : function(result) {
					var html = '<option value="">=구=</option>'
					for (var i = 0; i < result.list.length; i++) {
						html += '<option value="' ;
						html += result.list[i].GUCODE+'">';
						html += result.list[i].ATTR;
						html += '</option>';
						//<option value="rsvgu_gucode"> attr </option>
					}
					$("#dse2").html(html);
					$("#d1").html($("#dse1").val()+"일");
		/* 			console.log("==>"+$("#dse1").val()); */
				},
				error : function(result) {
					alert("응안돼~");
				}
			});
	}//showgu 끝
	
function showplace(){
	if ($("#dse2").val() != 0 && $("#dse1").val() != 0 ) {
		var params = $("#dataForm1").serialize();
		$.ajax({ //jquery에 있는 ajax
				type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
				url : "rsvplace3",
				dataType : "json",
				data : params,
				success : function(result) {
					var html = '<option value="">=장소=</option>'
					var check ="";
					for (var i = 0; i < result.list.length; i++) {
						html += '<option value="' ;
						html += result.list[i].PCODE+'">';
						html += result.list[i].ATTR;
						html += '</option>';
						check = result.list[i].PCODE;
					}
					if(check==""){
						setTimeout(function(){
							alert("귀하가 선택하신 장소가 없습니다.");
						},100);
					}
					$("#dse3").html(html);
					$("#d2").html($("#dse2 option:selected").text());	
		// 			<option value="1" name></option
				},
				error : function(result) {
					alert("응안돼~");
				}
			});
	
		};
	};
	
function SelectDate(){
	 var d= new Date();
		var month =d.getMonth()+1;
		var year =d.getFullYear();
		var html = '<option value="">=일=</option>'
		if(month==1||month==3||month==5||month==7||month==8||month==10||month==12){
			for(var i =1 ; i <= 31 ; i++){
				html += '<option value="'+i+'">'+i+'</option>';
			}// 31일로 처리해야될부분 1,3,5,7,8,10,12월
		}else if(month==4||month==6||month==11){
				for(var i =1 ; i <= 30; i++){
				html += '<option value="'+i+'">'+i+'</option>';
				}
		}else if(year%4==0&&month==2){
			for(var i =1 ; i <= 29; i++){
				html += '<option value="'+i+'">'+i+'</option>';
				}
			//윤년이면서, 2월일떄는 29일까지
		}else if(month==2){
			for(var i =1 ; i <= 28; i++){
				html += '<option value="'+i+'">'+i+'</option>';
				}
			//그냥 2월일떄는 28일까지
		}
	$("#dse1").html(html);
	}// function SelectDate끝
	

	function SelectDate1(){
		 var d= new Date();
			var month =d.getMonth()+1;
			var year =d.getFullYear();
			var html = '<option value="">=일=</option>'
			if(month==1||month==3||month==5||month==7||month==8||month==10||month==12){
				for(var i =1 ; i <= 31 ; i++){
					html += '<option value="'+i+'">'+i+'</option>';
				}// 31일로 처리해야될부분 1,3,5,7,8,10,12월
			}else if(month==4||month==6||month==11){
					for(var i =1 ; i <= 30; i++){
					html += '<option value="'+i+'">'+i+'</option>';
					}
			}else if(year%4==0&&month==2){
				for(var i =1 ; i <= 29; i++){
					html += '<option value="'+i+'">'+i+'</option>';
					}
				//윤년이면서, 2월일떄는 29일까지
			}else if(month==2){
				for(var i =1 ; i <= 28; i++){
					html += '<option value="'+i+'">'+i+'</option>';
					}
				//그냥 2월일떄는 28일까지
			}
		$("#se3").html(html);
		}// function SelectDate끝
	
</script>

</head>
<body>
	<div id="show">
	<input type="button" value="장소순" id="showplace" class="btn">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" value="날짜순" id="showdate" class="btn">
	</br></br>

			<!-- 장소순 select 시작 -->
		<div class="place" id="place">
			<div id="p1" class="rsvselect">구</div>
			&nbsp;>>
			<div id="p2" class="rsvselect"></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>>
			<div id="p3" class="rsvselect"></div>
			</br>
			</br>
			<form action="#" id="dataForm">
				<div class="showselect">
					<select class="rsv" id="se1" name="se1">
					</select>
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="showselect">
					<select class="rsv" id="se2" name="se2">
					</select>
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="showselect">
					<select class="rsv" id="se3" name="se3">
					</select>
				</div>
			</form>
		</div>
		<!-- 장소순 select 끝 -->
			
			
			<!-- 날짜순 select 시작 -->
		<div class="date" id="date" style="display: none">
			<div id="d1" class="rsvselect">일자</div>
			&nbsp;>>
			<div id="d2" class="rsvselect"></div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>>
			<div id="d3" class="rsvselect"></div>
			</br>
			</br>
			<form action="#" id="dataForm1">
				<div class="showselect">
					<select class="rsv" id="dse1" name="dse1">
					</select>
					<!-- 날짜 그 달에따라서 최대날짜까지 보여줌 -->
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="showselect">
					<select class="rsv" id="dse2" name="dse2">
					</select>
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="showselect">
					<select class="rsv" id="dse3" name="dse3">
					</select>
				</div>
			</form>
		</div>
		<!-- 날짜순 select 끝 -->
	<div id="rsv" >
	<!-- 예약현황 -->
		<table border="1">
			<thead>
				<tr>
					<th>시간</th>
					<th>예약여부</th>
					<th>비고</th>
					</tr>
			</thead> 
			<tbody id=""> 
			</tbody>
		</table>
	</div>
	<div>공연 장소 상세 보기</div>
	<div id="dphoto">
	</div>
	<div id="">
		<table border="1">
		
		</table>
	</div>
	<div>예상배치도</div>
	<div id="epphoto">
	</div>
	
	
	<!--spt	지원사항
		genre	장르
		pphoto	공연장소 사진
		dphoto	상세정보사진
		epphoto	예상배치도 사진
	  -->
</div>

</body>
</html>