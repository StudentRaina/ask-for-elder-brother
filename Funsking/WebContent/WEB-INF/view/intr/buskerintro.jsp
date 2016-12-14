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
<script type="text/javascript" src="resources/script/funsking/main.js"></script>
<style type="text/css">
/* html, body {
	position: relative;
	height: 100%;
	margin: 0;
	padding: 0;
} */
.top{	
	width: 100%; 
	height: 8%;
	background-color: #FF0000;	
}

.center{
	width:  100%; 
	height: 84%;
}

.content{
	width: 100%;
	height:100%;
	float: left;
}

.c_1 , .c_2{
	width: 100%;
	height: 5%;
	background-color: #FFF0FF;
	display: inline-block;
}
 .c_2_1{
	display: inline-block;	
	width: 79%;
	
} 
 .c_2_2{
	 display: inline-block;	
	 width: 20%;
} 
.c_3{
	width: 100%;
	height: 90%;
	/* background-color: #0000FF; */
}
.c_3_1{
	width: 100%;
	height: 80%;
	/* background-color:  #20B2AA; */
}
.c_3_2{
	width:100px;
	height: 5%;
	background-color: #87CEFA;
}
.footer{
	width: 100%;
	height: 8%;
	background-color: #FFE08C;
}
.list {
	width: 20%;
	display: inline-block;
	
}
.buskerimg {
	width :150px;
	height: 200px;
}
</style>

<script type="text/javascript">
$(document).ready(function() {
	
	 GENREBUSKER(); 
	refreshList();
	
	$("#drop1").on("change", function(){
		 $("[name= 'textGenre']").val($("#drop1 option:selected").val());
		 refreshList();
	});  
	   
	$("#searchBtn").on("click", function(){
		$("input[name='searchText']").val($("#searchText").val()*1);
		$("input[name='page']").val("1");
		/* alert.log($("#searchText").val()*1); */
		refreshList();
	});
	
	
	
	$("#tb").on("click", "table", function(){
		$("input[name='intrNum']").val($(this).attr("name"));  //attr: 속성

		$("#actionForm").attr("action", "buskerintro2"); //form 의 action="#" 이 "test5"로 바꾼다.
		$("#actionForm").submit();
	}); 
	/* $("#tb").on("click", function(){
		$("input[name='intrNum']").val($("table").attr("name"));  //attr: 속성
		 $("input[name='tName']").val($("td").attr("name")); 
		$("#actionForm").attr("action", "buskerintro2"); //form 의 action="#" 이 "test5"로 바꾼다.
		$("#actionForm").submit();	 
	}); */
	$("#RegBtn").on("click", function(){
		$("#actionForm").attr("action", "buskerwrite");
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
		url : "buskerajax",
		dataType : "json", 
		data : params,
		success : function(result){
			var html = "";
			
			    /* for(var i = 0 ; i < result.list3.length ; i++) {
	            html += "<tr name='" + result.list3[i].INTRNUM +"'>";
	            html += "<td colspan='4'>" + result.list3[i].DATE1 + "</td>";
	            html += "</tr>";
	            html += "<tr name='" + result.list3[i].INTRNUM +"'>";
	            html += "<td>" + result.list3[i].INTRNUM + "</td>";
	            html += "<td>" + result.list3[i].TNAME + "</td>";
	            html += "<td>" + result.list3[i].GENRE + "</td>";
	            html += "<td>" + result.list3[i].DATE1 + "</td>";
	            html += "</tr>";
			   	}	 */
			   	 
			   	 for(var i = 0 ; i < result.list3.length ; i++){
			   		 
			   		 if(result.list3[i].FILE_EXT != "mp4" ){ 
			   			 
			   		 
			   		html += "<div class ='list'>";   	
			   		html += "<table  name='" +result.list3[i].INTRNUM + "'>"
	   				html += "<tr>"
  					html += "<td colspan='2'>"
  					html += "<img class='buskerimg' src='resources/upload/" + result.list3[i].FILENAME + "' />"
  					html += "</td>";
  					html += "</tr>"
					html += "<tr name='hidden1'>"
					html += "<td colspan='2' name ='" + result.list3[i].TNAME + "'>" + result.list3[i].TNAME + "</td>";
					html += "</tr>"
					html += "<tr>"
		            html += "<td name ='" +result.list3[i].GENRE + "'>" + result.list3[i].GENRE + "</td>";
		            html += "<td>" + result.list3[i].DATE1 + "</td>";
					html += "</tr>"		  		
					html += "</table>"
					html +=	"</div>"
					console.log(result.list3[i]);
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

//장르 가져오기
function GENREBUSKER(){
		var params = $("#actionForm1").serialize();
		$.ajax({
		      type : "post",
		      url :  "GenreBusker",
		      dataType : "json",
		      data : params,
		      success : function(result) {
		    	  var html = "";
		    	  html += "<option value=''> 전체 </option>"
		    	  for(var i = 0; i < result.genre.length; i++){ 
		    		  html += "<option value='" + result.genre[i].GENRE + "'>"
		    		  html +=  result.genre[i].ATTR
		    		  html += "</option>"
		    	  	}
		  /*    	  console.log(html); */
		    	  $("#drop1").html(html);
		    	  		    	    	 
		         },
			  error : function(result) {
	        	 alert("장르 오류!!");
	      	}
		});
	}; //GENREBUSKER 끝


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
 	<h2 id="h2_busi_intr">버스커 소개</h2>
 	 	<hr id="hr2"/>
 	 	
 	
 	 	<div id="somenuFrame">
 	 		<!-- <div id="menutop">
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
 	 		</div> -->
 	 		
 	 		
 	 	</div>
 	 	<div id="contentsFrame" style="float: right;">
 	 		<div id="menutitle">버스커 소개</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<!-- <div id="bigtitleFrame">버스커 소개</div> -->
 	 		<div id="contentFrame">
 	 				
				<div class="content">
					<!-- <div class="c_1">			
					</div> -->
						<div class="c_2">
							<div class="c_2_1">
								<form action ="#" id="actionForm1" method="post"> 
								장르:	<select id="drop1">
										
									</select>
								</form>
							</div>
							<div class="c_2_2">			
								<input type="button"  value="등록하기" id="RegBtn"/>
							</div>
						</div>
				
						<div class="c_3">
							<div class="c_3_1"id="tb">
							
							</div>
							<form action ="#" id="actionForm" method="post">
								<c:choose>
										<c:when test="${empty param.page}">
											<input type="hidden" name="page" value="1" />
										</c:when>
										<c:otherwise>
											<input type="hidden" name="page" value="${param.page}" />
										</c:otherwise>
								</c:choose>
								<input type="hidden" name="textGenre" value="" />
								<input type="hidden" name="searchText" value="${param.searchText}" />
								<input type="hidden" name="intrNum" value="" />
								<input type="hidden" name="fileNum" value="" />
								
							</form>
							<input type="text" id="searchText" value="${param.searchText}"/>
							<input type="button" value="검색" id="searchBtn" />
							
							<div id= "pagingArea" class="c_3_2">
							
							</div>
						</div>
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