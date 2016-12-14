<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/intr/hoho.css" />
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.form.js"></script>	
<style type="text/css">
html, body {
	position: relative;
	height: 100%;
	margin: 0;
	padding: 0;
}
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
	height: 10%;
	background-color:  #20B2AA;
}
.c_3_2{
	width:100%;
	height: 50%;
	background-color: #87CEFA;
}
.c_3_3{
	width:100%;
	height: 40%;
	background-color: #00CEFA;
}

.list {
	width: 20%;
	display: inline-block;
	
}
#buskerimg {
	width :300px;
	height:300px;
}

</style>

<script type="text/javascript">
$(document).ready(function(){

	$("#ReviBtn").on("click", function(){
		$("#actionForm").attr("action", "introupdate");
		$("#actionForm").submit();
	}); //  Revi(수정)버튼 종료
	
	$("#DelBtn").on("click", function(){
		
		if(confirm("지울래?")){
			var params = $("#actionForm").serialize();
			
			$.ajax({
				type : "post",
				url : "deleteBusker",
				dataType : "json",
				data : params,
				success : function(result){
					if(result.res > 0){
						location.href = "buskerintro";
					} else {
						alert("삭제가 안된다.");
					}
				},
				error : function(result){
					alert("Error");
				}
			}); //ajax종료
		} //if종료
		console.log("1");
	}) //deleteBtn 종료
	
	console.log($("#tb"));
});// ready 종료
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
 	 			<div id="menu_text1"></div>
 	 			</div>
 	 			<div id="menu_image1"></div>	
 	 		</div>
 			
 			<div id="somenu2">
 	 		<div id="menu_textform2">
 	 			<div id="menu_text2"></div>
 	 			</div>
 	 			<div id="menu_image2"></div>
 	 		</div>
 	 		</div>	 -->  	
 	 	</div> 
 	 	<div id="contentsFrame" style="float: right;">
 	 		<div id="menutitle">버스커 소개</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<!-- <div id="bigtitleFrame">버스킹 공연 사진</div> -->
 	 		<div id="contentFrame">
 	 				
				<div class="content">
						
						<div class="c_2">
							<div class="c_2_1">
								<form action ="#" id="actionForm" method="post">
									1<input type="hidden" name="page" value="${param.page}"/>
									2<input type="text" name="searchText" value="${param.searchText}" />
									3<input type="text" name="fileNum" value="${param.fileNum}" />
									4<input type="text" name="intrNum" value="${param.intrNum}" />
								</form>
							</div>
							<div class="c_2_2">			
								<input type="button"  value="글 수정" id="ReviBtn"/>
								<input type="button"  value="삭제" id="DelBtn"/>		
							</div>
						</div>
						<div class="c_3" id="tb">
							<div class="c_3_1">
								<div class="c_3_1_1">팀명: ${list4.TNAME} </div>
								<div class="c_3_1_2">작성일: ${list4.DATE1}</div>
							</div>
							<div class="c_3_2">사진및소개${imgCnt}
								<table border="1">
									 <c:if test="${imgCnt > 0}">
							            <!--  CON.TEST_FILE 안에 무너가있다면. -->	
									      <tr>
									         <td>파일</td>
									         <c:forEach var="img" items="${list5}">
									         <td colspan="2" >
								               <c:if test="${img.FILE_EXT eq 'jpg' ||
								                           		img.FILE_EXT eq 'gif' ||
								                           		img.FILE_EXT eq 'png'}">
								               <img alt="${img.FILENAME}" id="buskerimg"
								                  src="resources/upload/${img.FILENAME}"/>
								               </c:if>
									         </td>
									         
									         </c:forEach>
							     		 </tr>
							      </c:if> 
							   
									<tr>					
										<td>장르 :${list4.GENRE}</td>
										<td>코멘트 :${list4.COMM}</td>
										<td>소개 :${list4.INTR}</td>
									</tr>
									<%-- <tr>
										  <td>파일넘버:${list5.FILENUM}</td>  
									</tr> --%>
									
									
								</table>
							</div>
							<div class="c_3_3">영상및사진
								<c:if test="${videoCnt > 0}">
										<video poster="http://placehold.it/640x360" width="640" height="360" controls="controls">
											<c:forEach var="img" items="${list5}">
									               <c:if test="${img.FILE_EXT eq 'mp4'}">
							                        	<source src="resources/upload/${img.FILENAME}" type="video/mp4" />
									               </c:if>
											</c:forEach>
										</video>
								</c:if>
							</div>		
						</div> <!-- c_3종료 -->
					</div>				
				
 	 		</div> <!-- contentFrame 종료 -->
 	 		
 	 	</div>
 	 
 	 	<hr/>
 		<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
 	
 </div>

</body>
</html>