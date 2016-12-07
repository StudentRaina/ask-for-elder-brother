<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">

var idCheck = false;

$(document).ready(function() {
	
	$("#joinBtn").on("click", function() {
		
		joinCheck();//회원가입 작성 여부
			
	});//회원가입
	
	
	$("#cancelBtn").on("click", function() {
		
		location.href = "join_tos";
	});
	
	
	
	$("#id").change(function() {
		idCheck = false;
	});//아이디 중복체크후 아이디 변경
	
	
	
	function joinAjax() {
		
		var params = $("#joinForm").serialize();
		
		$.ajax({
			type : "post",
			url : "insertJoin",
			dataType : "json",
			data : params,
			success : function(result) {
				if($("#password").val() == $("#password_conf").val()){
					if(result.res == "true"){
						location.href="join_compl";
					}else{
						alert("회원가입중 오류가 발생했습니다.");
					}
				}else{
					alert("비밀번호와 비밀번호 확인이 동일하지 않습니다.");
					$("#password_conf").val("");
					$("#phone").focus();
				}
					
			},
			error : function(result) {
				console.log(result.resultMessage);
				alert("웹 페이지에 문제가 있어 올바르게 표시되지 않았습니다.");
			}	
		});
	
	}//회원가입 저장
	

	$("#id_check").on("click", function() {
		
		var params = $("#joinForm").serialize();
		
		$.ajax({
			type : "post",
			url : "idCheckAjax",
			dataType : "json",
			data : params,
			success : function(result) {
				if(result.ch == "success"){
					alert("사용 가능한 아이디입니다.");
					idCheck = true;
				}else{
					alert("현재 아이디는 사용중이여서 다른 아이디를 입력해주세요.");
					$("#id").val("");
					$("#id").focus();
				}
			},
			error : function(result) {
				console.log(result.resultMessage);
				alert("웹 페이지에 문제가 있어 올바르게 표시되지 않았습니다.");
			}	
		});		
	});	//아이디 중복체크

	function joinCheck() {
		
		if($.trim($("#id").val()) == ""){
			alert("아이디를 입력하세요.");
			$("#id").focus();
			
		}else if($.trim($("#password").val()) == ""){
			alert("비밀번호를 입력하세요.");
			$("#password").focus();
			
		}else if($.trim($("#password_conf").val()) == ""){
			alert("비밀번호 확인을 입력하세요.");
			$("#password_conf").focus();
			
		}else if($.trim($("#name").val()) == ""){
			alert("이름을 입력하세요.");
			$("#name").focus();
			
		}else if($.trim($("#email").val()) == ""){
			alert("이메일을 입력하세요.");
			$("#id").focus();
			
		}else if($.trim($("#phone").val()) == ""){
			alert("전화번호를 입력하세요.");
			$("#phone").focus();			
		}else if(idCheck == false){
			alert("아이디 체크 확인을 해주세요.");
		}else{
			joinAjax();
		}			
	}//회원가입 작성 여부
	
	
});

</script>
</head>
<body>
<h1>회원가입</h1>

<form  action="#" id="joinForm" method="post">
	<div class="form-group" id="divId">
    	<label for="id" class="id_label">아이디</label>
        <div class="id_div">
        	<input type="text" class="id_input" id="id" name="id" maxlength="30">
        	<input type="button" class="id_check_input" id="id_check" name="id_check" value="아이디 중복체크">
        </div> 	
   	</div>
   	
   	<div class="form-group" id="divPassword">
    	<label for="password" class="password_label">비밀번호</label>
    	<div class="password_div">
   			<input type="password" class="password_input" id="password" name="password" maxlength="30">
		</div>
    </div>
            
    <div class="form-group" id="divPasswordConf">
        <label for="password_conf" class="password_conf_label">비밀번호 확인</label>
        <div class="password_conf_div">
            <input type="password" class="password_conf_input" id="password_conf" name="password_conf"  maxlength="30">
        </div>
   </div>
           
   <div class="form-group" id="divName">
       <label for="name" class="name_label">이름</label>
       <div class="name_div">
           <input type="text" class="name_input" id="name" name="name" maxlength="15">
       </div>
   </div>
             
   <div class="form-group" id="divEmail">
       <label for="email" class="email_label">이메일</label>
       <div class="email_div">
           <input type="email" class="email_input" id="email" name="email" maxlength="40">
       </div>
   </div>
            
   <div class="form-group" id="divPhoneNumber">
       <label ++for="phone" class="phone_label">휴대폰 번호</label>
       <div class="phone_div">
           <input type="tel" class="phone_input" id="phone" name="phone" maxlength="11">
       -를 제외하고 숫자만 입력하세요.
       </div>
   </div>
</form>
<br/>
<input type="button" id="joinBtn" value="회원가입" />
<input type="button" id="cancelBtn" value="취소" />
</body>
</html>