<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
<style>
	* {font-family:'Noto Sans KR', sans-serif; box-sizing: border-box;}
 	body {margin: 0; background-color: #EEEFF1;}
 	
 	.login-form {width: 500px; height: 100%; background-color: #fff; margin-right: auto; margin-left: auto; margin-top: 200px;
    padding: 50px; padding-left: 100px; padding-right: 100px; padding-bottom: 100px; 
    text-align: center; border: none; }
	
	.input-container{
		position:relative;
		margin-bottom:30px;
	}
	
 	.input-container label{ 
 		position:absolute; 
 		top:10px; 
 		left:20px; 
 		font-size:16px; 
 		color:#555; 
 	    transition: all 0.2s ease-in-out; 
 	} 
	
	.input-container input{ 
	  border:0;
	  border-bottom:1px solid #555;  
	  background:transparent;
	  width:260px;
	  padding:8px 0 5px 0;
	  font-size:16px;
	  color:#555;
	}
	.input-container input:focus{ 
	 border:none;
	 outline:none;
	 border-bottom:1px solid #e74c3c;	
	}
	
	.input-container input:focus ~ label,
	.input-container input:valid ~ label{
		top:-12px;
		font-size:12px;
		
	}
	
	.submit-btn {font-size: 14px; border: none; padding: 10px; width: 260px; background-color: black; margin-bottom: 5px; color: white; cursor:pointer;}
 	.submit-btn:active{color: #808080;transition: all ease 1s 0s;}
	
	#join {font-size: 14px; border: 1px solid black; box-sizing: border-box; padding: 10px; width: 260px; background-color: white; margin-bottom: 30px; color: black; cursor:pointer;}
 	#join:active{color: #808080; transition: all ease 1s 0s; background:black;}
 	
 	.links {text-align: center;}
 	.links a {font-size: 12px; color: #9B9B9B;}
 	.links span{font-size: 10px; color:#9B9B9B;}
 	#kakao{margin-top:30px}
</style>
</head>
<body>
  <div class="login-form">
    <form action="${ contextPath }/login.me" method="post">
      <a href="${ contextPath }"><img alt="로고" src="${ contextPath }/resources/image/logo1.png"></a><br/><br/>
      
      <div class="input-container">
      	<input type="text" name="memberId" id="id"  required="required"/>
      	<label for="id">아이디</label>
      </div>
      
      <div class="input-container">
      	<input type="password" name="memberPwd" id="pwd"  required="required"/>
      	<label for="pwd">비밀번호</label>
      </div>
      
      <input type="submit" value="로그인" class="submit-btn">
      <a href="${ contextPath }/enrollViewAgree.me"><input type="button" value="회원가입" id="join"></a>
    </form>
 
    <div class="links">
      <a href="#">아이디찾기</a>
      <span>　　|　　</span>
      <a href="#">비밀번호찾기</a>
      
    </div>
    <a href="#" target="_blank"><img alt="카카오로그인" src="${ contextPath }/resources/image/kakaologin.PNG" id="kakao"></a>
  </div>
</body>
</html>