$(document).ready(function() {
$("#busi_intr").on("click",function(){
				location.href="busiintr";
			});
$("#notice").on("click",function(){
				location.href="notice";
			});
$("#street_concert").on("click",function(){
				location.href="rsv";
			});
$("#bsk_intr").on("click",function(){	
				location.href="buskerintro";
			});
$("#media_photo").on("click",function(){
				location.href="buskerphoto";
			});
$("#audition").on("click",function(){
				location.href="";
			});
$("#qna").on("click",function(){
				location.href="faq_help_board";
			});
$("#cmu").on("click",function(){
				location.href="";
			});
$("#logoFrame").on("click",function(){
				location.href="home1";
			});


$("#loginFrame").on("click", function() {
    location.href = "login";
 });//로그인 페이지 이동

 $("#joinFrame").on("click", function() {
    location.href = "join_tos";
 });//회원가입 페이지 이동      
 
 $("#logoutFrame").on("click", function() {
    location.href = "Logout";
 });//로그아웃
 
 $("#login_idFrame").on("click", function() {
    location.href = "mypage_user";
 });//마이페이지



});
