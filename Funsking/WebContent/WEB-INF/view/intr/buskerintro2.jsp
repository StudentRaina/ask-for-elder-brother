<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js"></script>
<style type="text/css">
html, body {
	position: relative;
	height: 100%;
	margin: 0;
	padding: 0;
}
.top{	
	width: 100%; 
	height: 5%;
	background-color: #FF0000;	
}

.center{
	width:  100%; 
	height: 90%;
}

.content{
	width: 100%;
	height:100%;
	float: left;
}

.c_1 , .c_2{
	width: 100%;
	height: 10%;
	background-color: #FFF0FF;
	display: inline-block;
}
 .c_2_1, .c_2_2{
	display: inline-block;	
	width: 49%;
	
} 
 .c_2_2{
} 
.c_3{
	width: 100%;
	height: 80%;
	/* background-color: #0000FF; */
}
.footer{
	width: 100%;
	height: 5%;
	background-color: #FFE08C;
}
.list {
	width: 20%;
	display: inline-block;
	
}
.c_3_1 {
	height:10%;
}
.c_3_3, .c_3_4{
	height: 30%;
	background-color: #E0FFFF;
}
.c_3_2{
	height: 30%;
	background-color: #E0FFFF;
	margin: 0 auto;
}
.c_3_1_1{
	width: 70%;
	display: inline-block;
	background-color: #20B2AA;
	height: 100%;
}
.c_3_1_2{
	width: 20%- 1px;
	display: inline-block;
	background-color: #87CEFA;
	height: 100%;
}
#buskerimg{
	width: 300px;
	height: 150px;
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
<div class="top">top</div>
<div class="center">

		<div class="content">
		<div class="c_1">
			<h1><b>버스커 소개</b></h1>		
		</div>
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
				<table border="1" margin:"0>
					 <c:if test="${imgCnt > 0}">
			            <!--  CON.TEST_FILE 안에 무너가있다면. -->	
					      <tr>
					         <th>파일</th>
					         <c:forEach var="img" items="${list5}">
					         <td colspan="2">
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
					<tr>
						 <%-- <td>파일넘버:${list5.FILENUM}</td>  --%>
					</tr>
					
					
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
			<div class="c_3_4">댓글</div>
		</div>
	</div>
</div>
<div class="footer">Footer
</div>
</body>
</html>