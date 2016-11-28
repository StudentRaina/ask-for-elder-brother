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
<script type="text/javascript">
	$(document).ready(function() {
		
		
		$("#tb1").on("click",function(){

			var params = $("#tb1").serialize();
			
			$.ajax({  //jquery에 있는 ajax
				type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
				url : "rsvgu",
				dataType : "json", 
				data : params,
				success : function(result){
					var html = "";
					for(var i=0; i < result.list.length; i++){
						html += '<option value="' ;
						html += result.list[i].GUCODE+'">';
						html += result.list[i].ATTR ;
						html +=  '</option>';
						//<option value="rsvgu_gucode"> attr </option>
					}  
						$("#tb1").html(html);
					},
					error : function(result){
						alert("응안돼~");
					} 
				});// ajax끝
		});//tb1(구선택 ) 끝
		
		
	});//ready 끝
/* 
function getData(){
		var params = $("#tb1").serialize();
		
		
	$.ajax({  //jquery에 있는 ajax
		type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
		              //get방식: 클라이언트로부터의 데이터를 이름과 값이 결합된 스트링 형태로 전달
		              
		url : "rsvgu",
		dataType : "json", 
		data : params,
		success : function(result){
			var html = "";
			for(var i=0; i < result.list.length; i++){
				html += '<option value="' ;
				html += result.list[i].GUCODE+'">';
				html += result.list[i].ATTR ;
				html +=  '</option>';
				//<option value="rsvgu_gucode"> attr </option>
			}  
				$("#tb1").html(html);
			},
			error : function(result){
				alert("error!!");
			} 
		});// ajax끝
	}// getdata끝 */
</script>
<style type="text/css">

.rsv{
	width:100px;
	height:40px;
}

.rsvshow{
	font-size: 20pt;
	
}

</style>
</head>
<body>

<form action ="#" id="actionForm" method="post">
	<input type="button" value="날짜순">
	<input type="button" value="장소순">
</form>

		<table class="rsvshow">
		<tr>
			<td>==구==<td>&nbsp;&nbsp;&nbsp;&nbsp;			
			<td>==장소==<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<td>==일자==<td>
		</tr>
		</table>
		</br></br>
		<table>
		<tr>
			<select class="rsv" id="tb1">
			</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<select class="rsv">
				<option value="">==장소==</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<select class="rsv">
				<option value="">==장소==</option>
			</select>
		</tr>
		</table>
		
	<tbody id="tb"> 		
	</tbody>
		
</body>
</html>