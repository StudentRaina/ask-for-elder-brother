<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	height: 10%;
	background-color: #FF0000;	
}

.center{
	width:  100%; 
	height: 80%;
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
	height: 80%;
	/* background-color: #0000FF; */
}
.footer{
	width: 100%;
	height: 10%;
	background-color: #FFE08C;
}
.list {
	width: 20%;
	display: inline-block;
	
}
.c_3_1 {
	height:10%;
}
.c_3_2, .c_3_3, .c_3_4{
	height: 30%;
	background-color: #E0FFFF;
}
.c_3_1_1{
	width: 20%;
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
.c_3_1_3{
	width: 60%;
	display: inline-block;
	background-color: #87CEFA;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	
	
	
	$("#CancelBtn").on("click", function(){
		$("#actionForm").attr("action", "buskerintro");
		$("#actionForm").submit();
	});//CancelBtn 종료 
	
	$("#SaveBtn").on("click", function(){
		var updateForm = $("#updateForm")

		
		updateForm.ajaxForm(uploadResultCallBack); //form자체를 실행할때 ajax로 구동하겠다. // ajax를 실행하고 이 함수를 실행하겠다.
		updateForm.submit();
	
		/* actionForm.submit(); */
			
	});//saveBtn 종료
	
});//ready 종료

function uploadResultCallBack(data, result){
	if(result == "success"){
		 var resData = eval("(" + removePre(data) + ")");  //eval 데이터를 용도에맞춰 변형시켜줌 자바스크립트bean형태로 만들려고 사용 // resData 는 결국 Bean이라는 뜻
			
		$("#textFile").val(resData.fileName[0]);		
		$("#textFile1").val(resData.fileName[1]);
		
		var params = $("#updateForm").serialize();
		
		
		$.ajax({
		      type : "post",
		      url : "updateajax",
		      dataType : "json",
		      data : params,
		      success : function(result) {
		    	  if(result.res > 0){
			      		$("#actionForm").attr("action", "buskerintro2");
			      		$("#actionForm").submit();
			      	} else {
			      		alert("수정 중 문제가 발생");
			      	}
		      },
		      error : function(result) {
		    	 alert("ERROR!!")  // 에러가난 경우는 ajax자체에서 문제가 생김.
		      }
	      });
	} else{
		alert("저장실패");
	}
}//ajax 종료


function removePre(data) {
	if(data.indexOf("<pre>") > -1) {  // 위치찾는것  (-1 보)
		var st = data.indexOf(">"); //끝나는위치를 찾음
		var ed = data.indexOf("<", st); //시작위치를 찾음
		
		return data.substring(st + 1, ed);
	} else {
		return data;
	}
} // removePre 끝  <pre>를 없애주겠다는 기능 


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
				1
				<form action ="#" id="actionForm" method="post">
					page<input type="text" name="page" value="${param.page}"/>
					Seq<input type="text" name="seqNum" value="${param.seqNum}" />
					intr<input type="text" name="intrNum" value="${param.intrNum}" />
				</form>
			</div>
			<div class="c_2_2">			
				<input type="button"  value="확인 " id="SaveBtn"/>
				<input type="button"  value="취소" id="CancelBtn"/>	
			</div>
		</div>
		<div class="c_3" id="tb">
			<div class="c_3_1">
				<div class="c_3_1_1">팀명: ${list4.TNAME}</div>				
				<div class="c_3_1_3">
				</div>  
			</div>
			<form action ="fileUploadAjax" id="updateForm" method="post" enctype="multipart/form-data">
			<div class="c_3_2">
			<br/>
			사진및소개 
				<!-- 멀티파트는 복합적인 자료를 넘김? => 파일을 넘길때 쓴다 -->
					파일<input type="file" name="att1" />
					<input type="text" name="textFile" id="textFile" />
					<br/>
					<table border="1">
						<c:if test="${imgCnt > 0}">
			            <!--  CON.TEST_FILE 안에 무너가있다면. -->	
					         <c:forEach var="img" items="${list5}">
				               <c:if test="${img.FILE_EXT eq 'jpg' ||
				                           		img.FILE_EXT eq 'gif' ||
				                           		img.FILE_EXT eq 'png'}">
								     <tr>				       
							         	<td colspan="3">
							               <img alt="${img.FILENAME}" id="buskerimg"
							                  src="resources/upload/${img.FILENAME}"/>
								         </td>
					     		 	 </tr>
					     		 	 <tr>
						     			<td>파일번호<input type="text" name="fileNum" value="${img.FILENUM}" /></td>
						     		 </tr>
				               </c:if>
					         </c:forEach>
			     		 </c:if> 
			     		 <%-- <tr>
			     			<td>파일번호<input type="text" name="fileNum" value="${list5[0].FILENUM}" /></td>
			     		 </tr> --%>
			     		<tr>
			     			<td>파일번호:<input type="text" name="intrNum" value="${list4.INTRNUM}" />
			     		</tr>
						<tr>
							<td>코멘트 <input type="text" name="textComm" value="${list4.COMM}"/></td>
						</tr>
						<tr>
							<td>소개 <input type="text" name="textIntr" value="${list4.INTR}"/></td>
						</tr>
						
					
					</table>
				
			</div>
			<div class="c_3_3">영상및사진<br/>
					
					파일<input type="file" name="att2" />
					   <input type="text" name="textFile1" id="textFile1" /> <br/>
					   <c:if test="${videoCnt > 0}">
						<video poster="http://placehold.it/640x360" width="640" height="360" controls="controls">
							<c:forEach var="img" items="${list5}">
					               <c:if test="${img.FILE_EXT eq 'mp4'}">
			                        	<source src="resources/upload/${img.FILENAME}" type="video/mp4" />                     		
					               </c:if>
							</c:forEach>
						</video>
				</c:if>
				<input type="text" name="fileNum1" value="${list5[0].FILENUM}" />
			</div>
			</form>
			<div class="c_3_4">댓글</div>
		</div>
	</div>
</div>
</body>
</html>