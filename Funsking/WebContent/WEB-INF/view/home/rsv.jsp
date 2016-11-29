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
		var params = $("#se1").serialize();
		$.ajax({  //jquery에 있는 ajax
			type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
			url : "rsvgu",
			dataType : "json", 
			data : params,
			success : function(result){
				var html = '<option value='+'"'+'"'+'>==구==</option>';
				for(var i=0; i < result.list.length; i++){
					html += '<option value="' ;
					html += result.list[i].GUCODE+'">';
					html += result.list[i].ATTR ;
					html +=  '</option>';
					//<option value="rsvgu_gucode"> attr </option>
				}  
					$("#se1").html(html);
					$("#s1name").html("구 선택");
					
				},
				error : function(result){
					alert("응안돼~");
				} 
		});// ajax끝
		$("#se1").on("change",function(){
			checkgu();
			//console.log("-->"+$("#se1").val());
		});//tb1(구선택 ) 끝
		
		$("#se2").on("change",function(){
		});
		
		$("#showplace").on("click",function(){
			$("#show").html(html);
		});
		
		
		
		
		
	});//ready 끝
	
function checkgu(){
		if($("#se1").val() != 0) {
			var params =$("#dataForm").serialize();
			
			$.ajax({  //jquery에 있는 ajax
				type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
				url : "rsvplace",
				dataType : "json", 
				data : params,
				success : function(result){
					var show = "";
					var html = '<option value='+'"'+'"'+'>==장소==</option>';
					for(var i=0; i < result.list.length; i++){
						
						html += '<option value="' ;
						html += result.list[i].PCODE+'">';
						html += result.list[i].BATTR ;
						html +=  '</option>';
						show = result.list[i].ATTR;
						//<option value="rsvgu_gucode"> attr </option>
					}  
					$("#s1name").html(show);
					$("#se2").html(html);
				},
				error : function(result){
					alert(result.responseText);
				} 
			});// ajax끝
		} else{
			$("#s1name").html("구 선택");
			
		}//if 문 끝
	}//function checkug 끝
	
	

</script>
<style type="text/css">

.rsv{
	width:200px;
	height:40px;
}

.rsvshow{
	font-size: 20pt;
} 

</style>
</head>
<body>
	<input type="button" value="날짜순" id="showdate">
	<input type="button" value="장소순" id="showplace">


	
	<tbody id="show" >
		 <table class="rsvshow">
			<tr>
				<td id="s1name"></td>&nbsp;&nbsp;&nbsp;&nbsp;
				<td>==장소==</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<td>==일자==</td>
			</tr>
		</table>
		</br>
		</br>
		<form action="#" id="dataForm">
			<table>
				<tr>
					<select class="rsv" id="se1" name="se1">
					</select>&nbsp;&nbsp;&nbsp;&nbsp;
					<select class="rsv" id="se2">
					</select>&nbsp;&nbsp;&nbsp;&nbsp;
					<select class="rsv">
					</select>
				</tr>
			</table> 
		</form>
	</tbody>
	
</body>
</html>