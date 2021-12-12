<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
 <h2>로그인</h2>
<!-- <form action="./jsp/loginCheck.jsp" method="post" onsubmit="return checkValue()">
	아이디 : <input type="text" id="id" name="id" maxlength="15" placeholder="아이디"><br><br>
	비밀번호 : <input type="password" id="pw" name="password" maxlength="15" placeholder="비밀번호"><br><br>
	<input type="submit" value="로그인">
</form> -->

<form id="login" method="post" onsubmit="return checkValue()">
	아이디 : <input type="text" id="id" name="id" maxlength="15" placeholder="아이디"><br><br>
	비밀번호 : <input type="password" id="pw" name="password" maxlength="15" placeholder="비밀번호"><br><br>
	<input type="button" onclick="test()" value="로그인">
</form>

<script type="text/javascript">
 $(document).ready(function(){
	 
 });
 
/*  if(msg == 0){
	 alert('아이디/비밀번호가 틀렸습니다.')
 } */
 
 function checkValue(){
	 /* if($('#id').val().length<1){
		 alert('아이디 입력해주세요.')
		 $('#id').focus();
		 return false;
	 }else if($('#pw').val().length<1){
		 alert('비밀번호 입력해주세요.')
		 $('#pw').focus();
		 return false;
	 } */
	 
 }
 
 function test(){
	 
	 var params = jQuery("#login").serialize();
	 
	 $.ajax({
		  type:'post',
		  url:'http://localhost:8080/loginCheck.do',
		  data:params,
		  success:function(result) {
			  if(result>0){
				  alert('성공')
				  pageContext.forword("./jsp/loginCheck.jsp")
			  }else{
				  alert('실패')
			  }
		  }
		});
 }
 
 

</script>
</body>
</html>