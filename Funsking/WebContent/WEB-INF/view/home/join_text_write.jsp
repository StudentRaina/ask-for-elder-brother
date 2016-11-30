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



</script>
</head>
<body>
<h1>회원가입</h1>

<form>
	<div class="form-group" id="divId">
    	<label for="id" class="id_label">아이디</label>
        <div class="id_div">
        	<input type="text" class="id_input" id="id" maxlength="30">
        </div> 	
   	</div>
   	
   	<div class="form-group" id="divPassword">
    	<label for="password" class="password_label">비밀번호</label>
    	<div class="password_div">
   			<input type="password" class="password_input" id="password"  maxlength="30">
		</div>
    </div>
            
    <div class="form-group" id="divPasswordConf">
        <label for="password_conf" class="password_conf_label">비밀번호 확인</label>
        <div class="password_conf_div">
            <input type="password" class="password_conf_input" id="password_conf"  maxlength="30">
        </div>
   </div>
           
   <div class="form-group" id="divName">
       <label for="name" class="name_label">이름</label>
       <div class="name_div">
           <input type="text" class="name_input" id="name" maxlength="15">
       </div>
   </div>
             
   <div class="form-group" id="divEmail">
       <label for="email" class="email_label">이메일</label>
       <div class="email_div">
           <input type="email" class="email_input" id="email" maxlength="40">
       </div>
   </div>
            
   <div class="form-group" id="divPhoneNumber">
       <label for="phone" class="phone_label">휴대폰 번호</label>
       <div class="phone_label">
           <input type="tel" class="phone_input" id="phone" maxlength="11">
       -를 제외하고 숫자만 입력하세요.
       </div>
   </div>
</form>
<br/>
<input type="button" id="joinBtn" value="회원가입" />
<input type="button" id="cancelBtn" value="취소" />
</body>
</html>