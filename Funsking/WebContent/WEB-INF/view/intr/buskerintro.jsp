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
	height: 98%;
	/* background-color: #0000FF; */
}
.c_3_1{
	width: 100%;
	height: 80%;
	background-color:  #20B2AA;
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
	width :400px;
	height: 250px;
}

</style>
<script type="text/javascript">
$(document).ready(function() {
	
	refreshList();
	
	$("#searchBtn").on("click", function(){
		$("input[name='searchText']").val($("#searchText").val());
		$("input[name='page']").val("1");
		
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
			   		html += "<div class ='list'>";   	
			   		html += "<table border= '1' name='" +result.list3[i].INTRNUM + "'>"
	   				html += "<tr>"
   					html += "<td colspan='3'>"
   					html += "<img class='buskerimg' src='resources/upload/" + result.list3[i].FILENAME + "' />"
   					html += "</td>";
   					html += "</tr>"
					html += "<tr>"
					html += "<td name ='" + result.list3[i].TNAME + "'>" + result.list3[i].TNAME + "</td>";
		            html += "<td>" + result.list3[i].GENRE + "</td>";
		            html += "<td>" + result.list3[i].DATE1 + "</td>";
					html += "</tr>"		  		
					html += "</table>"
					html +=	"</div>"	  
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

$("#ReviBtn").on("click", function(){
	$("#actionForm").attr("action", "buskerupdate");
	$("#actionForm").submit();
});
</script>

</head>
<body>
<div class="top">top</div>
<div class="center">

		<div class="content">
		<div class="c_1">
			<b>버스커 소개</b>	
		</div>
		<div class="c_2">
			<div class="c_2_1">
				1
			</div>
			<div class="c_2_2">			
				<input type="button"  value="등록하기" id="RegBtn"/>
				<input type="button"  value="수정하기" id="ReviBtn"/>		
			</div>
		</div>

		<div class="c_3">
			<div class="c_3_1"id="tb">
			
			</div>
			<form action ="#" id="actionForm" method="post">
				<c:choose>
						<c:when test="${empty param.page}">
							<input type="text" name="page" value="1" />
						</c:when>
						<c:otherwise>
							<input type="text" name="page" value="${param.page}" />
						</c:otherwise>
				</c:choose>
				<input type="text" name="searchText" value="${param.searchText}" />
				<input type="text" name="intrNum" value="" />
			</form>
			<input type="text" id="searchText" value="${param.searchText}"/>
			<input type="button" value="검색" id="searchBtn" />
			
			<div id= "pagingArea" class="c_3_2">
			
			</div>
		</div>
		</div>
</div>
<div class="footer">Footer
	
</div>
</body>
</html>