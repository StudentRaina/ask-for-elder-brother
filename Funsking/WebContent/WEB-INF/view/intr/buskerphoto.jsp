<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/intr/hoho.css" />
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.form.js"></script>	
<script type="text/javascript" 
			src="resources/script/funsking/main.js">
</script>
<style type="text/css">
.contentFrame{
	vertical-align: middle;
}
.c_1{
	width: 100%;
	height: 8%;
	/* background-color: #E6E6FA;/* 연한보라 */ 
	display: inline-block;
}
.c_1_1{
	width:70%;
	height: 100%;
	display: inline-block;
	background-color: #E6E6FA;
}
.c_1_2{
	width:20%;
	height: 10%;
	display: inline-block;
	/* background-color: #C1CDCD; */ /* 연한회색 */
}
.c_2{
	width: 100%;
	height: 70%;
	/* background-color: #EEE8AA; *//* 연한노랑 */
	display: inline-block;
}
.c_3{
	width: 100%;
	height: 10%;
	/* background-color: #FFB6C1; */ /* 연한핑크 */
	display: inline-block;
}
.c_4{
	width: 100%;
	height: 10%;
	background-color: #C1CDCD; /* 연한회색 */
	display: inline-block;
}
#somenu1{
	 background: rgb(190, 190, 190); /* 회색 */ 
}
#somenu2{
 background: rgb(142, 68, 173); /* 보라색 */
}
</style>

<script type="text/javascript">
$(document).ready(function() {
	
 
	refreshList();
	
	/* $("#drop1").on("change", function(){
		 $("[name= 'textGenre']").val($("#drop1 option:selected").val());
		 refreshList();
	});   */
	   
	/* $("#searchBtn").on("click", function(){
		$("input[name='searchText']").val($("#searchText").val());
		$("input[name='page']").val("1");
		
		refreshList();
	}); */
	
	$("#tb").on("click", "table", function(){
		$("input[name='concertNum']").val($(this).attr("name"));  //attr: 속성
		$("#actionForm").attr("action", "buskerphoto2"); //form 의 action="#" 이 "test5"로 바꾼다.
		$("#actionForm").submit();
	}); 
	
	$("#RegBtn").on("click", function(){
		$("#actionForm").attr("action", "photowrite");
		$("#actionForm").submit();
	}); //RegBtn(등록하기) 종료 
	
	$("#pagingArea").on("click", "span", function(){
		$("input[name='page']").val($(this).attr("name"));
		
		refreshList();
	});//
	
}); //ready 종료

function refreshList() {
	var params = $("#actionForm").serialize();
	$.ajax({  
		
		
		type : "post", 
		url : "photoajax",
		dataType : "json", 
		data : params,
		success : function(result){
			var html = "";
			
	
			   	 for(var i = 0 ; i < result.list3.length ; i++){
			   		 
			   		 if(result.list3[i].FILE_EXT != "mp4" ){ 
			   		
			   		 
			   		html += "<div class ='list'>";   	
			   		html += "<table border= '1' name='" +result.list3[i].CONCERTNUM + "'>"
	   				html += "<tr>"
   					html += "<td colspan='3'>"
   					html += "<img class='buskerimg' src='resources/upload/" + result.list3[i].FILENAME + "' />"
   					html += "</td>";
   					html += "</tr>"
					html += "<tr>"
					html += "<td name ='" + result.list3[i].CONCERTNUM + "'>" + result.list3[i].CONCERTNUM + "</td>";
		            html += "<td>" + result.list3[i].TITLE + "</td>";
		            html += "<td>" + result.list3[i].DATE1 + "</td>";
					html += "</tr>"		  		
					html += "</table>"
					html +=	"</div>"
			   		 }
			   	} 
			   	
	         	
				$("#tb").html(html);
		         html = "";
		         /*  아래부터는 paging */
		         html += "<span name='1'>처음</span>";
		         
		         if($("input[name='page']").val() == 1) {
		            html += "<span name='1'>이전</span>";
		         } else {
		            html += "<span name = '" + ($("input[name='page']").val() - 1) + "'>이전</span>";
		         }
		         
		         for(var i = result.pb.startPcount ; i <= result.pb.endPcount ; i++) {
		            if (i == $("input[name='page']").val()) {
		               html += "<span name = '" + i + "'><b>" + i + "</b></span>";
		            } else {
		               html += "<span name = '" + i + "'>" + i + "</span>";
		            }
		         }
		         
		         if($("input[name='page']").val() == result.pb.maxPcount) {
		            html += "<span name = '" + result.pb.maxPcount + "'>다음</span>";
		         } else {
		            html += "<span name = '" + ($("input[name='page']").val() * 1 + 1) + "'>다음</span>";
		         }
		         
		         html += "<span name='" + result.pb.maxPcount + "'>마지막</span>";
		         
		         $("#pagingArea").html(html);
			},
			error : function(result){
				alert("error!!");
			} 
		});// ajax 종료
		
}// refreshList 종료
</script>
</head>
<body>

<div id="centerFrame">
	
<div id="topFrame">
 	<div id="logoFrame"></div>
 	 <!--천재영느님께서 만듬 ㅋㅋㅋㅋㅋㅋ 로그인 화면  -->    
     <c:choose>  
        <c:when test="${!empty sFuserNUM}">
           <div id="member2Frame">       
             <div id="login_idFrame">${sFuserID}</div>
             <div id="logoutFrame">로그아웃</div>
            </div>      
        </c:when>
        
        <c:otherwise>
           <div id="memberFrame">       
             <div id="joinFrame">회원가입</div>
             <div id="loginFrame">로그인</div>
            </div>     
        </c:otherwise>   
     </c:choose> 
 </div> 
	<hr/>
	
 	<div id="menuFrame">
 		<div id="busi_intr">사업소개</div>
 		<div id="notice">공지사항</div>
 		<div id="street_concert">거리공연</div>
		<div id="bsk_intr">버스커소개</div>
		<div id="media_photo">공연 영상 및 사진</div>
		<div id="audition">오디션</div>
		<div id="qna">QnA</div>
		<div id="cmu">커뮤니티</div>
 	</div>
 	<hr id="hr"/>
 	<h2 id="h2_busi_intr">공연 영상 및 사진</h2>
 	 	<hr id="hr2"/>
 	 	
 	
 	 	<div id="somenuFrame">
 	 		<div id="menutop">
 	 			<div id="block"></div>
 	 			<div id="line"></div>
 	 			
 	 				<div id="somenu1">
 	 			<div id="menu_textform1">
 	 			<div id="menu_text1">공연 영상</div>
 	 			</div>
 	 			<div id="menu_image1"></div>	
 	 		</div>
 			
 			<div id="somenu2">
 	 		<div id="menu_textform2">
 	 			<div id="menu_text2">공연 사진</div>
 	 			</div>
 	 			<div id="menu_image2"></div>
 	 		</div>
 	 		</div>
 	 		
 	 		
 	 	</div>
 	 	<div id="contentsFrame" style="float: right;">
 	 		<div id="menutitle">버스커 공연 사진</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<div id="bigtitleFrame">버스킹 공연 사진</div>
 	 		<div id="contentFrame">
 	 			<div class="c_1">
 	 				<div class="c_1_1">
 	 					<!-- <select id="drop1">
 	 					</select> -->
		 	 			<form action ="#" id="actionForm" method="post">
							<c:choose>
									<c:when test="${empty param.page}">
										<input type="hidden" name="page" value="1" />
									</c:when>
									<c:otherwise>
										<input type="hidden" name="page" value="${param.page}" />
									</c:otherwise>
							</c:choose>
							<input type="hidden" name="searchText" value="${param.searchText}" />
							<input type="hidden" name="concertNum" value="" />
						</form>
 	 				</div>
 	 				<div class="c_1_2">
 	 					<input type="button" id="RegBtn"  value="글 작성"/>
 	 				</div>
 	 			</div>
 	 			<div class="c_2" id="tb">
 	 			</div>
 	 			<div class="c_3">
 	 			</div>
 	 			<div class="c_4" id="pagingArea">
 	 			</div>
 	 		</div>
 	 		
 	 	</div>
 	 
 	 	<hr/>
 		<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
 	
 </div>

</body>
</html>