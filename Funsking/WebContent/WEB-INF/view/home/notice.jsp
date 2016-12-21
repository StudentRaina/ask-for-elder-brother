<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style type="text/css">
body{
	margin:0px;
	width : 100%;
	height: 100%;
}



#centerFrame{
	width : 63%;
	height : 998px;
	display : inline-block;
	margin-left : 18.7%;
}



 
#topFrame{
 

	width : 100%;
	height: 42px;
 
}
 
#logoFrame{

	width : 260px;
	height: 40px;
	display: inline-block;
	background-image: url('resources/images/LOGO.PNG');
	background-size : 260px 40px;
	
}

 #memberFrame{
/* 	border: 1pt solid #000000; */
	width : 200px;
	height : 40px;
	display: inline-block;
	margin-left : 60.5%;
	margin-top : 0.5%;
}

#joinFrame{
		/* border: 1pt solid #000000; */
	width : 90px;
	height : 40px;
	text-align : center;
	display: table-cell;
	vertical-align : middle;
	font-size : 10pt;
}

#loginFrame{
	/* 	border: 1pt solid #000000; */
	width : 85px;
	height : 40px;
	text-align : center;
	display: table-cell;
	vertical-align : middle;
	font-size : 10pt;

	
} 


 


#menuFrame{
	 /* border: 1pt solid #000000;  */
	width: 100%;
	height : 45px;
	display : inine-block;
}



#contentFrame{
	 border:1pt solid #000000; 
	width: 100%;
	height : 905px;
	 background-size : 100% 100%; 
	 margin-top : 1%;
}

#titleFrame{
/* 	border : 1pt solid #000000; */
	width : 450px;
	height : 250px;
	margin-top : 6%;
	margin-left : 1%;
}

#favoriteFrame{
	/* border : 1pt solid #000000; */
	width : 550px;
	height : 200px;
	margin-top : 16%;
	margin-left : 53%;
}

#companytitleFrame{
	/* border : 1pt solid #000000; */
	width : 100%;
	height : 20px;
	margin-left:0.2%;
	margin-top : 0.5%;
	font-size : 10pt;
	color : gray;
	
}

#companyFrame{
	width : 100%;
	height : 70px;
	text-align : center;
}

#bigtextFrame{
	/* border : 1pt solid #000000; */
	width : 450px;
	height : 70%;
	font-size : 50pt;
	color : #FFFFFF;
	margin-top:3%;
	}
	
#smalltextFrame{
	width : 450px;
	height : 30%;
	font-size : 37.5pt;
	color : #FFFFFF;
}

	

#busi_intr{
	width : 83px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	margin-left : 12.3%;
	/* background-image: url('resources/images/busi.png'); */
	/* background-size : 123px 100%; */
	text-align : center;
}
	
	
#notice{
	width : 83px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/notice.png');
	background-size : 123px 100%; */
	margin-top : 0.3%;
	text-align : center;
	margin-left : 1.5%;
}

#street_concert{
	width : 83px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
/* 	background-image: url('resources/images/streetconcert.png');
	background-size : 123px 100%; */
	text-align : center;
	margin-left : 1.5%;
}

#bsk_intr{
	width : 103px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/bskintr.png');
	background-size : 123px 100%; */
	text-align : center;
	margin-left : 1.5%;
	
}
	
#media_photo{
	width : 143px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/mediaphoto.png');
	background-size : 143px 100%; */
	text-align : center;
	margin-left : 1.5%;
}

#audition{
	width : 73px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/audition.png');
	background-size : 103px 100%; */
	text-align : center;
	margin-left : 1.5%;
}

#qna{
	width : 63px;
	height : 60%;
	display : inline-block;
 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/qna.png');
	background-size : 103px 100%; */
	text-align : center;
	margin-left : 1.5%;
}

#cmu{
	width : 83px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/cmu.png');
	background-size : 123px 100%; */
	text-align : center;
	margin-left : 1.5%;
}

#hr{
	margin-top : -0.6%;
}

#h4{
   margin-top : -1%;
   margin-left : 48.7%;
   color : #FFFFFF;
}

#hr2 {
	margin-top : -0.2%;
}

#hr3 {
	margin-top : 1%;
}





#somenuFrame{
	width : 18%;
	height : 100%;
	display : inline-block;
	/* border : 1pt solid #000000; */
	
}

 #menutop {
	width :100%;
	height : 6px;
	display : inline-block;
}

#block {
	width : 28%;
	height : 6px;
	background-color : rgb(22, 160, 133);
	display : inline-block;
	float : left;
}

#line {
	width : 72%;
	height : 6px;
	border-top : 1pt solid gray;
	display : inline-block;
	float : left;
}
 
#somenu1{
	width : 100%;
	height : 40px;
	background-color : rgb(22, 160, 133);
	margin-top : 5%;
	display : inline-block;
	/* background-image: url('resources/images/asdf.png');
	background-position : right center;
	background-repeat : no-repeat;
	background-size : 15% 70%; */
	
}

#menu_image1{
	width: 30px;
	height : 40px;
	display : inline-block;
	background-image: url('resources/images/asdf.png');
	background-position : right center;
	background-repeat : no-repeat;
 	background-size : 100% 70%; 
 	margin-left : 30%;
}

#menu_text1{
	display: table-cell;
	width : 90px;
	height : 40px;
	vertical-align : middle;
}

#menu_textform1{
	display : inline-block;
	width : 90px;
	height : 40px;
/* 	padding-left : 8px;
	padding-top : 7px; */
	margin-left : 5%;
	color : #FFFFFF;
}

#somenu2{
	width : 100%;
	height : 40px;
	background-color : rgb(190, 190, 190);
	margin-top : 1%;
	display : inline-block;
	/* background-image: url('resources/images/asdf.png');
	background-position : right center;
	background-repeat : no-repeat;
	background-size : 15% 70%; */
}


#menu_image2{
	width: 30px;
	height : 40px;
	display : inline-block;
	/* background-image: url('resources/images/asdf.png'); */
	background-position : right center;
	background-repeat : no-repeat;
 	background-size : 100% 70%; 
 	margin-left : 23.8%;
}

#menu_text2{
	display: table-cell;
	width : 90px;
	height : 40px;
	vertical-align : middle;
}

#menu_textform2{
	display : inline-block;
	width : 90px;
	height : 40px;
/* 	padding-left : 8px;
	padding-top : 7px; */
	margin-left : 5%;
	color : #FFFFFF;
}


#contentsFrame{
	width: 81%;
	height : 100%;
/* 	border : 1pt solid #000000; */
	display : inline-block;
}

#menutitle{
	font-size : 13.5pt;
	font-weight : bold;
}

 #content_top {
	width :100%;
	height : 7px;
	display : inline-block;
/* 	border : 1pt solid #000000; */
	margin-top : 0.5%;
}

#block2 {
	width : 15%;
	height : 6px;
	background-color : rgb(22, 160, 133);
	display : inline-block;
	float : left;
}

#line2 {
	width : 85%;
	height : 6px;
	border-bottom : 1pt solid rgb(22, 160, 133);
	display : inline-block;
	float : left;
	margin-top : -0.1%;
}

#bottomFrame{
	text-align : center;
	font-size : 10pt;
	font-weight : bold;
}

#bigtitleFrame{
	width : 100%;
	height : 30pt;
	margin-top : 1%;
	font-size : 20pt;
	color : rgb(155, 89, 182);
	font-weight : bold;
}

#noticeBlock{
	width : 150px;
	height : 40px;
	
	display : table-cell;
	vertical-align : middle;
		text-align : center;
	background-color : rgb(22, 160, 133);
	color : #FFFFFF;
	font-weight : bold;
}

#festivalBlock{
	width : 150px;
	height : 40px;
	
	display : table-cell;
	vertical-align : middle;
		text-align : center;
	background-color : rgb(190, 190, 190);	
	color : #FFFFFF;
	font-weight : bold;
		
}

#auditionBlock{
	width : 150px;
	height : 40px;
	
	display : table-cell;
	vertical-align : middle;
	text-align : center;
	background-color : rgb(190, 190, 190);
	color : #FFFFFF;
	font-weight : bold;
}

.bbb{
	width : 150px;
	height : 40px;
	display : inline-block;
	margin-top : 1%;
}

.title{
	width : 300px;
	height : 30px;
}

.listtable{
	width : 90%;
	text-align: center;
	margin:0 auto;
	margin-top : 4%;
	border : 0.2pt solid rgb(224, 224, 224);
	
}

#noticenumber{
	width :10%;
	background-color : rgb(224, 224, 224);
	font-weight : bold;
	height : 40px;

}

#notice_title{
	width : 75%;
	background-color : rgb(224, 224, 224);
	font-weight : bold;
	eight : 40px;
}

#notice_date{
	width : 15%;
	background-color : rgb(224, 224, 224);
	font-weight : bold;
	eight : 40px;
	
}

#searchText{
	width : 150px;
	height : 25px;
	border-radius : 5px;
	margin-left : 5%;
	margin-top : 2%;
	
}

#searchBtn{
	width : 90px;
	height : 35px;
	color : #FFFFFF;
	background-color : rgb(22, 160, 133);
	border-radius : 6px;
	font-weight : bold;
	font-size : 12pt;
}


#insertBtn{
	width : 90px;
	height : 35px;
	color : #FFFFFF;
	background-color : rgb(22, 160, 133);
	border-radius : 6px;
	font-weight : bold;
	margin-left : 53%;
	font-size : 12pt;
}

.page{
	font-size : 20pt;
}

#pagingArea{
	text-align : center;
	font-size : 13pt;
	color : rgb();
}
</style>
<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript"
	src="resources/script/funsking/main.js"></script>
<script type="text/javascript">



$(document).ready(function(){
	refreshList();
	$("#searchBtn").on("click", function(){
		
		
		
		 $("input[name='searchText']").val($("#searchText").val()); //name되있는건 hidden, id가 searchText는 폼밖에있음,
		 															//데이터작업은 hidden에서 실행되므로 넘겨줘야한다.
		 												
		 $("input[name='page']").val("1"); //페이지1을줌, 검색하면 1페이지로 이동해야하기때문
		 
		 refreshList();
		 
	}); //searchBtn
	
		$("#insertBtn").on("click", function(){
		$("#actionForm").attr("action","noticeinsert");
		$("#actionForm").submit();
	}); //insertBtn
	
	$("#pagingArea").on("click", "span", function(){
		$("input[name='page']").val($(this).attr("name")); //page에 선택된것의 name을 넣어줌, 3을 눌렀다고 가정하에 3에 해당하는 name은 3이 들어간다. 즉 페이지가 3이됨 그뒤에 리스트가 동작하여 페이징에 따라 데이터가 다르게 나타난다.
		refreshList();
	}); // pagingArea
	
	$("#tb").on("click", ".title", function(){
		$("input[name='noticeNo']").val($(this).parent("tr").attr("name"));
		$("#actionForm").attr("action", "noticeDetailedView");
		$("#actionForm").submit(); //form을 실행시켜서 해당 화면에 데이터를 넘긴다.
		
	}); //tb
	
}); //ready end


function refreshList(){
	var params = $("#actionForm").serialize(); 
	
	$.ajax({                                           // jQuery에 있는 ajax를 불러온다. $. 에서 .은 어디에 있냐
		type : "post",
		url : "refreshTest",                            // 비동기로 접속했기때문에 화면은 그대로에서 컨트롤러를 불러옴
		dataType : "json",
		data : params,                               // 	var params = $("#actionForm").serialize(); 시리얼라이즈에서 만든 데이터타입
		success : function(result) { 
			var html= "";
			
			for(var i = 0; i <result.list.length; i ++){
				html += "<tr name='"+ result.list[i].NOTICENUM + "'>";
				html += "<td>" + result.list[i].NOTICENUM + "</td>";
				html += "<td class='title' >" + result.list[i].TITLE + "</td>";
				html += "<td>" + result.list[i].DATE1 + "</td>";
				html += "</tr>";
			}
			
			$("#tb").html(html);
			
			html = "";
			
			html+= "<span name='1'>처음</span>" + "&nbsp;";
			
			if($("input[name='page']").val() == 1) {
				html +="<span name='1'>이전</span>" + "&nbsp;";
			} else{
				html += "<span name='"
							+ ($("input[name='page']").val() - 1)
							+"'>이전</span>" + "&nbsp;";
			}
			
			for(var i = result.pb.startPcount ; i <= result.pb.endPcount ; i++){ 
				
				if(i == $("input[name='page']").val()) {
					html += "<span name'" + i + "'><b>" + i + "</b></span>" + "&nbsp;";
				} else{
					html += "<span name='" + i + "'>" + i + "</b></span>" + "&nbsp;";
				}
			}//startPcount 에서 endPcount까지 현재페이지에 숫자가 같다면 <b>로 굵게 보이게함
			
			if($("input[name='page']").val() == result.pb.maxPcount){  
				html += "<span name='" + result.pb.maxPcount + "'>다음</span>" + "&nbsp;";
			} else{
				html += "<span name='"
							+ ($("input[name='page']").val() * 1 + 1)
							+ "'>다음</span>" + "&nbsp;";
			}//다음은 만약 9페이지가끝인데 10페이지로 넘기지않기 위해서 9로 고정시킨다.
			
			html += "<span name='" + result.pb.maxPcount + "'>마지막</span>";
							//마지막은 총카운트 즉 maxPCount를 가져오면된다.
							
							
			$("#pagingArea").html(html);
		
			
		},                                         // 성공하면 불러오기
		error : function(result){
			alert("error!!");                     // 실패하면  error창
		}
	});
	
	
}
</script>
</head>
<body>

<div id="centerFrame">
	
<div id="topFrame">
 	<div id="logoFrame"></div>
 	  <div id="memberFrame">
 		<div id="joinFrame">회원가입</div>
 		<div id="loginFrame">로그인</div>
 	  </div>
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
 	<h2 id="h2_busi_intr">공지사항</h2>
 	 	<hr id="hr2"/>
 	 	
 	
 	 	<div id="somenuFrame">
 	 		<div id="menutop">
 	 			<div id="block"></div>
 	 			<div id="line"></div>
 	 			
 	 				<div id="somenu1">
 	 			<div id="menu_textform1">
 	 			<div id="menu_text1">공지사항</div>
 	 			</div>
 	 			<div id="menu_image1"></div>	
 	 		</div>
 			
 			
 	 		</div>
 	 		
 	 		
 	 	</div>
 	 	<div id="contentsFrame" style="float: right;">
 	 		<div id="menutitle">공지사항</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<div class="bbb">
 	 		<div id="noticeBlock">공지사항</div>
 	 		</div>
 	 		<div class="bbb">
 	 		<div id="festivalBlock">축제 및 홍보</div>
 	 		</div>
 	 		<div class="bbb">
 	 		<div id="auditionBlock">오디션</div>
 	 		</div>
 	 		<div id="contentFrame">
 	 		
	<table class="listtable">
		<tr>
			<th id="noticenumber">번호</th>
			<th id="notice_title">제목</th>
			<th id="notice_date">작성일</th>
		</tr>
	</thead>
		<tbody id="tb">
			<%-- <c:forEach var="con" items="${list}">
				<tr>
					<td>${con.TEST_NO}</td>
					<td>${con.TEST_CON}</td>
				</tr>
			</c:forEach> --%>
		</tbody>
	</table>
		<form action="#" id="actionForm" method="post"> <!-- test3가 데이터를 조회해주는녀석이니 이 action은 test3로 가면된다. -->
	<c:choose>
		<c:when test="${empty param.page}"> <!-- 넘어오는params.page 값이 비어있다면 -->
			<input type="hidden" name="page" value="1" /> <!-- 첫번째페이지를 보여준다. -->
		</c:when>
		<c:otherwise>
			<input type="hidden" name="page" value="${param.page}" />
		</c:otherwise>
	</c:choose>
		<input type="hidden" name="page" value="1" />
		<input type="hidden" name="searchText" value="${param.searchText}"/>
		<input type="hidden" name="noticeNo" value="" />
	</form>
		<input type="text" id="searchText" value="${param.searchText}"/> 
		<input type="button" value="검색" id="searchBtn"/>
		<input type="button" value="글 작성" id="insertBtn" />
		
	
	<div id="pagingArea"></div>
 	 		
 	 		
 	 		
 	 		</div>
 	 </div>
 	 
 	 	<hr/>
 		<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
 	
 </div>
</body>
</html>