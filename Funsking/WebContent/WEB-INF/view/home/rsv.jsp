<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/mian/main.css" />
	
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript"
	src="resources/script/funsking/main.js"></script>
<style type="text/css">
.rsv {
   display:inline-block;   
   vertical-align: top;
   width: 200px;
   height: 40px;
}
/*select하는 곳 3개*/

.rsvselect{
   display:inline-block;   
   vertical-align: top;
   width: 200px;
   height: 40px;
   font-size: 15pt;
   font-weight:bold;
   text-align: center;
   
}
/*구 , 장소 , 시간 보여주는 틀  */
.showselect{
   display:inline-block;
   vertical-align: top;
   width: 200px;
   height: 40px;
}
/* select하는곳 의 겉 div*/
#show{
	width:  1000px;
	height: auto;
	display: none;
	vertical-align: top;
}

.btn{
	color:black;
	font-size : 14pt;
   display:inline-block;
   vertical-align: top;
   width: 100px;
   height: 40px;
}
#rsv{
	width: 700px;
	height: 200px;
}

#dphoto {
	width: 500px;
	height: 400px;
	vertical-align: top;
	display: inline-block;
	background-size: 200px 200px;
}
#imp{
	width:300px;
	height:200px;
	vertical-align: top;
	display: inline-block;
}
#epphoto{
	height:500px;
	width: 400px;
}

.showimg img{
	width: 100%;
	height: 100%;
}


#howconcertrsv{
   width : 150px;
   height : 40px;
   
   display : table-cell;
   vertical-align : middle;
      text-align : center;
   background-color : rgb(190, 190, 190);
   color : #FFFFFF;
   font-weight : bold;
}

#concertrsv{
   width : 150px;
   height : 40px;
   
   display : table-cell;
   vertical-align : middle;
   text-align : center;
   background-color : rgb(190, 190, 190);   
   color : #FFFFFF;
   font-weight : bold;
      
}

#cancelrsv{
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
#menu_image1{
	width: 30px;
	height : 40px;
	background-image: url("resources/images/asdf.png");
	display:inline-block;
	background-position : right center;
	background-repeat : no-repeat;
 	background-size : 100% 70%; 
 	margin-left : 23.8%;
}
#menu_image2{
	width: 30px;
	height : 40px;
	background-image: url("resources/images/asdf.png");
	display:inline-block;
	background-position : right center;
	background-repeat : no-repeat;
 	background-size : 100% 70%; 
 	margin-left : 23.8%;
}
#menu_image3{
	width: 30px;
	height : 40px;
	background-image: url("resources/images/asdf.png");
	display:inline-block;
	background-position : right center;
	background-repeat : no-repeat;
 	background-size : 100% 70%; 
 	margin-left : 23.8%;
}





</style>
	

	
	
<script type="text/javascript">

var sche="";
var gu="";
var place="";


	$(document).ready(function() {
			$("#somenu1").css("background-color","rgb(155, 89, 182)");
			$("#howconcertrsv").css("background-color","rgb(155, 89, 182)");
			
			
			$("#concertscheshow").css("display","block");
			$("#rsvmenu").css("display","none");
			$("#concertplaceshow").css("display","none");
			$("#howconcertrsvshow").css("display","none");
			$("#cancelrsvshow").css("display","none");
			$("#show").css("display","none");
			$("#allshow").css("display","none");
			
			
			$("#menu_image2").css("display","none");
			$("#menu_image3").css("display","none");
			
			
			
			$("#menu_text1").on("click",function(){
				$("#concertscheshow").css("display","block");
				$("#concerplace").css("display","none");
												
				$("#menutitle").html("공연 일정");
				$("#somenu1").css("background-color","rgb(155, 89, 182)");
				$("#somenu2").css("background-color","none");
				$("#somenu3").css("background-color","none");
				
				$("#rsvmenu").css("display","none");
				$("#concertplaceshow").css("display","none");
				$("#show").css("display","none");
				$("#howconcertrsvshow").css("display","none");
				$("#cancelrsvshow").css("display","none");
				
				
				$("#menu_image1").css("display","inline-block");			
				$("#menu_image2").css("display","none");			
				$("#menu_image3").css("display","none");			
				
				
				$("#dse1").val("");
				$("#dse2").val("");
				$("#dse3").val("");
				
				$("#dse1").html("");
				$("#dse2").html("");
				$("#dse3").html("");
				
				
				$("#se2").val("");
				$("#se3").val("");
				
				$("#se2").html("");
				$("#se3").html("");
				
				
				$("#d1").html("일자");
				$("#d2").html("");
				$("#d3").html("");
				
				$("#p1").html("구");
				$("#p2").html("");
				$("#p3").html("");
				
				$("#howconcertrsv").css("background-color","rgb(155, 89, 182)");
				$("#cancelrsv").css("background-color","none");
				$("#concertrsv").css("background-color","none");
				$("#showdate").css("background-color","none");
				
				
				$("#showplace").attr("disabled",true);
				$("#showdate").attr("disabled",false);
				
				$("#date").css("display","none");
				$("#place").css("display","none");
				
			});//공연일정
		
				$("#menu_text2").on("click",function(){
					$("#menutitle").html("공연 예약");
					$("#somenu2").css("background-color","rgb(155, 89, 182)");
					$("#somenu1").css("background-color","none");
					$("#somenu3").css("background-color","none");
					7
					$("#rsvmenu").css("display","block");
					$("#howconcertrsvshow").css("display","block");
					$("#canclersvshow").css("display","none");
					
					$("#concertscheshow").css("display","none");
					$("#concertplaceshow").css("display","none");
					
					
					$("#menu_image2").css("display","inline-block");			
					$("#menu_image1").css("display","none");			
					$("#menu_image3").css("display","none");			
					

					$("#dse1").val("");
					$("#dse2").val("");
					$("#dse3").val("");
					
					$("#dse1").html("");
					$("#dse2").html("");
					$("#dse3").html("");
					
					$("#se2").val("");
					$("#se3").val("");
					
					$("#se2").html("");
					$("#se3").html("");
					
					$("#d1").html("일자");
					$("#d2").html("");
					$("#d3").html("");
					
					$("#p1").html("구");
					$("#p2").html("");
					$("#p3").html("");
					
					$("#howconcertrsv").css("background-color","rgb(155, 89, 182)");
					$("#cancelrsv").css("background-color","none");
					$("#concertrsv").css("background-color","none");
					$("#showdate").css("background-color","none");
					$("#showplace").attr("disabled",true);
					$("#showdate").attr("disabled",false);
					


					$("#date").css("display","none");
					$("#place").css("display","none");
					
				});//공연예약
				
					$("#menu_text3").on("click",function(){
						$("#menutitle").html("공연 장소");
						$("#somenu3").css("background-color","rgb(155, 89, 182)");
						$("#somenu2").css("background-color","none");
						$("#somenu1").css("background-color","none");
						
						$("#concertplaceshow").css("display","block");
						$("#concertscheshow").css("display","none");
						$("#rsvmenu").css("display","none");
						$("#show").css("display","none");
						$("#howconcertrsvshow").css("display","none");
						$("#cancelrsvshow").css("display","none");
						
						
						$("#menu_image3").css("display","inline-block");			
						$("#menu_image2").css("display","none");			
						$("#menu_image1").css("display","none");			
						

						$("#dse1").val("");
						$("#dse2").val("");
						$("#dse3").val("");
						
						$("#dse1").html("");
						$("#dse2").html("");
						$("#dse3").html("");
						
						$("#se2").val("");
						$("#se3").val("");
						
						$("#se2").html("");
						$("#se3").html("");
						
						
						
						$("#d1").html("일자");
						$("#d2").html("");
						$("#d3").html("");
						
						$("#p1").html("구");
						$("#p2").html("");
						$("#p3").html("");
						
						$("#howconcertrsv").css("background-color","rgb(155, 89, 182)");
						$("#cancelrsv").css("background-color","none");
						$("#concertrsv").css("background-color","none");
						$("#showdate").css("background-color","none");
						$("#showplace").attr("disabled",true);
						$("#showdate").attr("disabled",false);
						

						$("#date").css("display","none");
						$("#place").css("display","none");
						
					});//공연 장소.
			
							$("#howconcertrsv").on("click",function(){
								$("#howconcertrsv").css("background-color","rgb(155, 89, 182)");
								$("#cancelrsv").css("background-color","none");
								$("#concertrsv").css("background-color","none");
								
								
								
								$("#howconcertrsvshow").css("display","block");
								$("#show").css("display","none");
								$("#cancelrsvshow").css("display","none");
								$("#concertscheshow").css("display","none");								
								$("#concertplaceshow").css("display","none");	
								$("#showdate").css("background-color","none");
								$("#showplace").attr("disabled",true);
								$("#showdate").attr("disabled",false);
								

								$("#date").css("display","none");
								$("#place").css("display","none");
							});//공연 예약방법 버튼(예약에 있는탭)
					
								$("#cancelrsv").on("click",function(){
									$("#cancelrsv").css("background-color","rgb(155, 89, 182)");
									$("#howconcertrsv").css("background-color","none");
									$("#concertrsv").css("background-color","none");
									
									$("#howconcertrsvshow").css("display","none");
									$("#show").css("display","none");
									$("#cancelrsvshow").css("display","block");
									$("#concertscheshow").css("display","none");								
									$("#concertplaceshow").css("display","none");
									$("#showdate").css("background-color","none");
									$("#showplace").attr("disabled",true);
									$("#showdate").attr("disabled",false);
									

									$("#date").css("display","none");
									$("#place").css("display","none");
									
								});//공연 취소버튼(예약에있는텝);
			
									$("#concertrsv").on("click",function(){
										
										
										$("#concertrsv").css("background-color","rgb(155, 89, 182)");
										$("#cancelrsv").css("background-color","none");
										$("#howconcertrsv").css("background-color","none");
										$("#showplace").css("background-color","rgb(155, 89, 182)");
										
										$("#showplace").attr("disabled",true);
										$("#showdate").attr("disabled",false);
										
										$("#show").css("display","block");
										$("#allshow").css("display","none");
										$("#howconcertrsvshow").css("display","none");
										$("#cancelrsvshow").css("display","none");
										$("#concertscheshow").css("display","none");								
										$("#concertplaceshow").css("display","none");	
										
										$("#place").css("display","block");
										$("#date").css("display","none");
										selectgu();
									});//공연예약 쉬ㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣ부엉 (텝)
		
									
									
			
					//구를보여줌
						$("#showplace").on("click", function() {
							$("#allshow").css("display","none");
							$("#showplace").attr("disabled",true);
							$("#showdate").attr("disabled",false);
							//버튼 비활성화
							$("#place").css("display", "block");
							$("#date").css("display","none");
							$("#showplace").css("background-color","rgb(155, 89, 182)");
							$("#showdate").css("background-color","none");
							$("#dse1").val("");
							$("#dse2").val("");
							$("#dse3").val("");							
							$("#dse2").html("");
							$("#dse3").html("");
							$("#d1").html("일자");
							$("#d2").html("");
							$("#d3").html("");
							// 장소순 가리고 날짜순 show
							selectDate();
						});
					
					
					
						$("#showdate").on("click", function() {
							$("#allshow").css("display","none");
							$("#showplace").attr("disabled",false);
							$("#showdate").attr("disabled",true);
							$("#date").css("display", "block");
							$("#place").css("display", "none");
							$("#showdate").css("background-color","rgb(155, 89, 182)");
							$("#showplace").css("background-color","none");
							$("#se1").val("");
							$("#se2").val("");
							$("#se3").val("");
							$("#se2").html("");
							$("#se3").html("");
							$("#p1").html("구");
							$("#p2").html("");
							$("#p3").html("");
							selectDate();
							// 날짜순 가리고 장소순 show
						});
					
						$("#se1").on("change", function() {
							$("#allshow").css("display","none");
							$("#se3").val("");
							$("#se3").html("");
							$("#p2").html("");
							$("#p3").html("");
							$("#p1").html($("#se1 option:selected").text());
							selectplace();
						});
						
						$("#se2").on("change", function() {
							$("#allshow").css("display","none");
							$("#p3").html("");
							$("#p3").val("");
							$("#p2").html($("#se2 option:selected").text());	
							selectDate();
						});
						
						$("#se3").on("change", function() {
							$("#allshow").css("display","none");
							$("#p3").html($("#se3 option:selected").text());
							rsvall();
						});
						$("#dse1").on("change",function(){
							$("#allshow").css("display","none");
							$("#d3").html("");
							$("#d3").val("");
							$("#d2").html("");
							$("#d2").val("");
							$("#d1").html($("#dse1 option:selected").text()+" 일");
							selectgu();
						});
						$("#dse2").on("change",function(){
							$("#allshow").css("display","none");
							$("#d3").html("");
							$("#d3").val("");
							$("#d2").html($("#dse2 option:selected").text());
							showplace();
						});
						$("#dse3").on("change",function(){
							$("#allshow").css("display","none");
							$("#d3").html($("#dse3 option:selected").text());
							rsvall();
							
						});
					});//ready 끝

					
function selectgu(){
	var params = $("#dataForm").serialize();
	$.ajax({ //jquery에 있는 ajax
				type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
				url : "rsvgu",
				dataType : "json",
				data : params,
				success : function(result) {
					var html = '<option value="">=구=</option>'
					for (var i = 0; i < result.list.length; i++) {
						html += '<option value="' ;
						html += result.list[i].GUCODE+'">';
						html += result.list[i].ATTR;
						html += '</option>';
						//<option value="rsvgu_gucode"> attr </option>
					}
					if($("#showdate").attr("disabled")=="disabled" && $("#dse1").val() != 0){
						$("#dse2").html(html);	
					}else if($("#showplace").attr("disabled")=="disabled"){
					$("#se1").html(html);
					}
				},
				error : function(result) {
					alert("응안돼~");
				}
			});// ajax끝
}//function 끝.
			
					

function rsvall(){
	var d= new Date(); 
	var yyyy = d.getFullYear();
    var mm  = d.getMonth()+1;
    var dd ="";
    //console.log(yyyy); 2016년
    //console.log(mm); 12월
    //console.log(dd); 13일
	if($("#showdate").attr("disabled")=="disabled"){
		 //날짜로 선택하는것이 활성화 되어있을시.
		// console.log($("#dse1").val()+"dse1값"); clear
		dd=parseInt($("#dse1").val());
   		gu=parseInt($("#dse2").val());
   		place=parseInt($("#dse3").val());
	}else if($("#showplace").attr("disabled")=="disabled"){
		//장소 선택하는것이 활성화 되어있을시.
	dd=parseInt($("#se3").val());
	gu=parseInt($("#se1").val());
	place=parseInt($("#se2").val());
    } 
    var dp = new Date(yyyy,mm-1,dd);
    
  
   /*  console.log(dp+"dp값");
    console.log(gu+"gu값");
    console.log(place+"place값");
    console.log(dd+"se3의값.");  */
    
   	$("[name=sche]").val(dp.getDay());
    console.log($("[name=sche]").val());
   	$("[name=gu]").val(gu);
   	$("[name=place]").val(place);
   	
	if (
		(	$("#se1").val() != 0 && $("#se2").val() != 0 && $("#se3").val() != 0	) ||
		(	$("#dse1").val() != 0 && $("#dse2").val() != 0 && $("#dse3").val() != 0)
		) {

			var params = $("#dataForm").serialize();
			$.ajax({ //jquery에 있는 ajax
						type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
						url : "rsvall",
						dataType : "json",
						data : params,
						success : function(result) {
						var html="";
						var html2 ="";
						var dphto ="";
						var pphoto = "";
						var epphoto = "";
						/*B.ATTR AS GU,  B.TEL  ,A.ATTR AS PLACE  ,F.ATTR AS GENRE  ,A.SPT  ,A.DPHOTO  ,A.PPHOTO  ,A.EPPHOTO  
						 C.CONCERTSCHE,C.CONCERTHR,E.TNAME
						 */
						 if(result.list.length>0){
								$("#allshow").css("display","block");
							 	html2 +='<table border="1"><tr><td>구</td>';
							 	html2 +='<td>'+result.list[0].GU+'</td></tr>'
							 	html2 +='<tr><td>장소</td>'
							 	html2 +='<td>'+result.list[0].PLACE+'</td></tr>'
							 	html2 +='<tr><td>지원사항</td>'
							 	html2 +='<td>'+result.list[0].SPT +'</td></tr>'
							 	html2 +='<tr><td>장르</td>'
							 	html2 +='<td>'+result.list[0].GENRE +'</td></tr>'
							 	html2 +='<tr><td>공연가능시간</td>'
							 	html2 +='<td>'+result.list[0].CONCERTHR+"~"+result.list[result.list.length-1].CONCERTHR+'</td></tr>'
							 	html2 +='<tr><td>담당 구청번호</td>'
							 	html2 +='<td>'+result.list[0].TEL+'</td></tr>'
							 	html2 +='</table>';
							 	$("#imp").html(html2);
								dphoto ='<img src="resources/upload/'+result.list[0].DPHOTO+'"/>';
								pphoto = '<img src="resources/upload/'+result.list[0].PPHOTO+'"/>';
								epphoto = '<img src="resources/upload/'+result.list[0].EPPHOTO+'"/>';
								$("#dphoto").html(dphoto);
								$("#pphoto").html(pphoto);
								$("#epphoto").html(epphoto);
								//<img src="image.png" style="width: 100%; max-width: 760px; vertical-align: middle" />
								//<img alt="${con.TEST_FILE} src="resources/upload/${con.TEST_FILE}"/>
								html+='<table border="1" width="700" height="200">';
								html +='<tr><th  style="background:yellow;">예약 가능시간</th><th style="background:yellow;">예약 여부</th><th  style="background:yellow;">예약된 팀명</th></tr>'
								for(var i = 0 ; i <result.list.length;i++){
									html += '<tr class="rsvshow">';
									html += '<th class="rsvshow">'+result.list[i].CONCERTHR+":00시     ~    "+(parseInt(result.list[i].CONCERTHR)+1)+':00시</th>';
										if(result.list[i].TNAME!=null){
											html += '<th style="background:red";>예약불가</th>';
											html += "<th>팀명: "+result.list[i].TNAME+"</th>";
											html +="</tr>";
										}else{
											html+="<th>예약가능</th>";
											html += '<th><input type="button" value="예약하기"/></th>';
											html +="</tr>";
										}
								}//for
								html+="</table>";
								$("#rsv").html(html);
						 }//if문 검색결과있을시.
						 else{
							 alert("예약일정이 없음");
							 }
						},
						error : function(result) {
							alert(result.responseText);
						}
					});// ajax끝
		}//if 끝

	}//예약의 모든걸 보여주는 rsvall 끝.

	function selectplace() {
		if ($("#se1").val() != 0 || ($("#dse1").val() != 0 || $("#dse2").val() != 0) ) {
			var params = $("#dataForm").serialize();
			$.ajax({ //jquery에 있는 ajax
						type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
						url : "rsvplace",
						dataType : "json",
						data : params,
						success : function(result) {
							var show = "";
							var html = '<option value="">=장소=</option>'
							for (var i = 0; i < result.list.length; i++) {
								html += '<option value="' ;
								html += result.list[i].PCODE+'">';
								html += result.list[i].BATTR;
								html += '</option>';
 								//<option value="pcode"> 장소 </option>
								// show = xx구 
							}
							$("#se2").html(html);
						},
						error : function(result) {
							alert(result.responseText);
						}
					});// ajax끝
		} else {
			$("#p1").html("구");
		}//if 문 끝
	}//function checkug 끝
	
	function showplace() {
		if ($("#dse2").val() != 0 && $("#dse1").val() != 0) {
			var params = $("#dataForm").serialize();
			$.ajax({ //jquery에 있는 ajax
						type : "post", //브라우저의 주소 입력란에 내용이 나타나지 않음
						url : "rsvplace3",
						dataType : "json",
						data : params,
						success : function(result) {
							var html = '<option value="">=장소=</option>'
							var check = "";
							for (var i = 0; i < result.list.length; i++) {
								html += '<option value="' ;
								html += result.list[i].PCODE+'">';
								html += result.list[i].ATTR;
								html += '</option>';
								check = result.list[i].PCODE;
							}
							if (check == "") {
								setTimeout(function() {
									alert("귀하가 선택하신 장소가 없습니다.");
								}, 100);
							}
							$("#dse3").html(html);
							// 			<option value="1" name></option
						},
						error : function(result) {
							alert("응안돼~");
						}
					});
		}
	}

	function selectDate() {
		var d = new Date();
		var month = d.getMonth() + 1;
		var year = d.getFullYear();
		var day = d.getDate();
		//console.log(d.getDay());
		// 일 월 화 수 목 금 토 일  -> 숫자로나타냄. 2
		//console.log(d.getDate());
		//오늘날짜 6일
		
		var html = '<option value="">=일=</option>';
		if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8
				|| month == 10 || month == 12) {
			for (var i = day+3; i <= 31; i++) {
				html += '<option value="'+i+'">' + i + '</option>';
			}// 31일로 처리해야될부분 1,3,5,7,8,10,12월
		} else if (month == 4 || month == 6 || month == 11) {
			for (var i = day+3; i <= 30; i++) {
				html += '<option value="'+i+'">' + i + '</option>';
			}
		} else if (year % 4 == 0 && month == 2) {
			for (var i = day+3; i <= 29; i++) {
				html += '<option value="'+i+'">' + i + '</option>';
			}
			//윤년이면서, 2월일떄는 29일까지
		} else if (month == 2) {
			for (var i = day+3; i <= 28; i++) {
				html += '<option value="'+i+'">' + i + '</option>';
			}
			//그냥 2월일떄는 28일까지
		}
		if( $("#showdate").attr("disabled")=="disabled" ){
		$("#dse1").html(html);
		}else if($("#showplace").attr("disabled")=="disabled"){
			$("#se3").html(html);	
		}
	}// function SelectDate끝

</script>
<body>
<div id="centerFrame">
	
<div id="topFrame">
 	<div id="logoFrame">
 		<img src="resources/images/LOGO.png" style="width :300px;"/>
 	</div>
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
	
 	<div id="menuFrame" >
 		<div id="busi_intr" class="mousecursor">사업소개</div>
 		<div id="notice" class="mousecursor">공지사항</div>
 		<div id="street_concert" class="mousecursor">거리공연</div>
		<div id="bsk_intr" class="mousecursor">버스커소개</div>
		<div id="media_photo" class="mousecursor">공연 영상 및 사진</div>
		<div id="audition" class="mousecursor">오디션</div>
		<div id="qna" class="mousecursor">QnA</div>
		<div id="cmu" class="mousecursor">커뮤니티</div>
 	</div>
 	<hr id="hr"/>
 	<h2 id="h2_busi_intr">거리공연</h2>
 	 	<hr id="hr2"/>
 	
 	 	<div id="somenuFrame">
 	 		<div id="menutop">
 	 			<div id="block"></div>
 	 			<div id="line"></div>
 	 			
 	 			<div id="somenu1">
 	 			<div id="menu_textform1">
 	 			<div id="menu_text1" class="mousecursor">공연 일정</div>
 	 			</div>
 	 			<div id="menu_image1"></div>	
 	 		</div>
 			
 			<div id="somenu2">
 	 		<div id="menu_textform2">
 	 			<div id="menu_text2" class="mousecursor">공연 예약</div>
 	 			</div>
 	 			<div id="menu_image2"></div>
 	 		</div>
 			<div id="somenu3">
 	 		<div id="menu_textform3">
 	 			<div id="menu_text3" class="mousecursor">공연 장소</div>
 	 			</div>
 	 			<div id="menu_image3"></div>
 	 		</div>
 	 		</div>
 	 	</div>
 	 	<div id="contentsFrame" style="float: right;">
           <div id="menutitle">공연 일정</div>
           
           <div id="content_top">
              <div id="block2"></div>
              <div id="line2"></div>
           </div>
           <div id="rsvmenu">
           <div class="bbb">
           <div id="howconcertrsv" class="mousecursor">공연 예약방법</div>
           </div>
           <div class="bbb">
           <div id="concertrsv" class="mousecursor">공연 예약</div>
           </div>
           <div class="bbb">
           <div id="cancelrsv" class="mousecursor">예약 취소</div>
           </div>
           </div>
           <div id="contentFrame">
 	 		<!-- 스크립트 줄 -->
 	 		
 	 		<div id="concertscheshow">
 	 			<img src="resources/images/pageupdating.png"/>
 	 		</div>
 	 		<!-- 공연 일정 -->
 	 		
           	<div id="concertplaceshow">
           	 	<img src="resources/images/pageupdating.png"/>
           	</div>
           	<!--  공연장소 -->
           	
           	
           	<div id="howconcertrsvshow">
           			<img src="resources/images/howconcertsche.png"/>
           	</div>
           	<!-- 공연 예약/예약방법 -->
           	<div id="cancelrsvshow">
           		 	<img src="resources/images/pageupdating.png"/>
           	</div>
           	
           	
           	<!-- 공연예약/예약취소 -->
          	<div id="show">
   <input type="button" value="장소순" id="showplace" class="btn">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="button" value="날짜순" id="showdate" class="btn">
   <br/><br/>

         <form action="#" id="dataForm">
         <!-- 장소순 select 시작 -->
      <div class="place" id="place">
         <div id="p1" class="rsvselect">구</div>
         &nbsp;>>
         <div id="p2" class="rsvselect"></div>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>>
         <div id="p3" class="rsvselect"></div>
         <br/>
         <br/>
            <div class="showselect">
               <select class="rsv" id="se1" name="se1">
               </select>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="showselect">
               <select class="rsv" id="se2" name="se2">
               </select>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="showselect">
               <select class="rsv" id="se3" name="se3">
               </select>
            </div>
            <input type="hidden" name="sche">
            <input type="hidden" name="gu">
            <input type="hidden" name="place">
      </div>
      <!-- 장소순 select 끝 -->
         
      <!-- 날짜순 select 시작 -->
      <div class="date" id="date" style="display: none">
         <div id="d1" class="rsvselect">일자</div>
         &nbsp;>>
            <div id="d2" class="rsvselect"></div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>>
            <div id="d3" class="rsvselect"></div>
            <br/>
            <br/>
            <!-- <form action="#" id="dataForm"> -->
               <div class="showselect">
                  <select class="rsv" id="dse1" name="dse1">
                  </select>
                  <!-- 날짜 그 달에따라서 최대날짜까지 보여줌 -->
               </div>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <div class="showselect">
                  <select class="rsv" id="dse2" name="dse2">
                  </select>
               </div>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <div class="showselect">
                  <select class="rsv" id="dse3" name="dse3">
                  </select>
               </div>
            <input type="hidden" name="sche">
            <input type="hidden" name="gu">
            <input type="hidden" name="place">
            </div>
         </form>
         <!-- 날짜순 select 끝 -->
         <br/><br/><br/><br/>
       <!-- 스크립트 줄 -->       
      <div id="allshow"  style="width:100%">
         <div id="rsv" ></div>
         <!-- 예약현황 -->
         <br/><br/>
         <div>공연 장소 상세 보기</div>
         <br/>
         <div id="dphoto" class="showimg"></div>
         <div id=imp></div>
         <br/><br/>
         <div>예상배치도</div>
         <br/>
         <div id="epphoto" class="showimg">
         </div>
      </div>
   </div>
     
   
  
          <hr/>
       <div id="bottomFrame" >(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
       이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>  
        </div>
 </div>
 	 		
 	 	</div>
 	 
</body>
</html>