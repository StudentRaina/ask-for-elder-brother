<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
        src="resources/script/jquery/jquery-1.11.0.js" ></script>
<script type="text/javascript">   
$(document).ready(function(){
/* 	$("#searchBtn").on("click", function(){
		/* $("#searchForm").submit(); 
		var params = $("#serachForm").serialize();

		$.ajax({  //jquery에 있는 ajax
			
		
			type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
			               //get방식: 클라이언트로부터의 데이터를 이름과 값이 결합된 스트링 형태로 전달
			url : "searchTest",
			dataType : "json", 
			data : params,
			success : function(result){
				var html = "";
				
				for(var i=0; i < result.list.length; i++){
					html += "<tr>";
					html += "<td>" + result.list[i].TEST_NO + "</td>";
					html += "<td>" + result.list[i].TEST_CON + "</td>";
					html += "</tr>";
				}  list가 자바스크립트로 넘어가면 배열로 된다. 따라
                           서 배열처럼 쓰면된다.  
					$("#tb").html(html);
				},
				error : function(result){
					alert("error!!");
				} 
			});// 
		});//searchBtn끝   */
		refreshList();
		
		$("#searchBtn").on("click", function(){
			$("input[name='searchText']").val($("#searchText").val());
			$("input[name='page']").val("1");
			refreshList();
		});
		
		$("#insertBtn").on("click", function(){
			$("#actionForm").attr("action","test7");
			$("#actionForm").submit();
		});
		
		
		
		
		$("#pagingArea").on("click", "span", function(){
			$("input[name='page']").val($(this).attr("name"));
			//글 밑에 page인 1,2,3,4 에서 클릭을 하면 그것의 값$(this).attr("name")
			//이 input[name=page]에 넣어준다
			refreshList();
		});
		$("#tb").on("click","tr",function(){
			$("input[name='testNo']").val($(this).attr("name"));
			//id가tb(tbody)안에있는 tr을 클릭했을시에  input[name=testno에 ']
			//클릭한곳의 val($(this).attr("name")를 넣어준다
			$("#actionForm").attr("action","test5");
			//action폼아이디의 값에 action, test5를준다??
			$("#actionForm").submit();
			//저장한다
			
		});
		
});//ready끝
function refreshList() {
	   var params = $("#actionForm").serialize();
	   
	   $.ajax({
	      type : "post",
	      url : "refreshTest",
	      dataType : "json",
	      data : params,
	      success : function(result) {
	         var html = "";
	         
	         for(var i = 0 ; i < result.list.length ; i++) {
	            html += "<tr name='"+result.list[i].TEST_NO+"'>";
	            html += "<td>" + result.list[i].TEST_NO + "</td>";
	            html += "<td>" + result.list[i].TEST_CON + "</td>";
	            html += "</tr>";
	         }
	         
	         $("#tb").html(html);
	         
	         html = "";
	         
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
	      error : function(result) {
	         alert("error!!");
	      }
	   });
	}
</script>
</head>
<body>
<form action ="#" id="actionForm" method="post">
	<c:choose>
		<c:when test="${empty param.page}">
		<%--empty는 비어있다면, 즉 params.page가 비어있다면, --%>
			<input type="hidden" name="page" value="1"/>
		</c:when>
		<c:otherwise>
			<input type="hidden" name="page" value="${param.page}"/>				
		</c:otherwise>
	</c:choose>
<input type="hidden" name="page" value="1" />
<input type="hidden" name="searchText"  value="${param.searchText}"/>
<input type="hidden" name="testNo"/>
</form>
	<input type="text" id="searchText" value="${param.searchText}" />
	<input type="button" value="검색" id="searchBtn" />
	<input type="button" value="추가" id="insertBtn" />
<br/>
<table border="1">
	<thead>
		<tr>
			<th>번호</th>
			<th>내용</th>
		</tr>
	</thead> 
	<tbody id="tb"> 
<%-- 		<c:forEach var="con" items="${list}">
			<tr>
				<td>${con.TEST_NO}</td>
				<td>${con.TEST_CON}</td>
			</tr> -
		</c:forEach> --%>
		
	</tbody>
</table>
<div id= "pagingArea"></div>
</body>
</html>