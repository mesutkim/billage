<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.find-password-page{
  width:550px;
  text-align:center;
  overflow-x:hidden;
  margin:11% auto;
  background-color:#f9f9f9;
  vertical-align: middle;
}

.find-password-header {
  text-align:left;
  margin:60px 75px 0 75px;
  padding-bottom:10px;
  font-size:16pt;
  border-bottom:3px solid #5ba184;
}

.find-password-content {
  margin:30px 0 20px 85px;
  text-align:left;
}

.find-password-div {
  margin-bottom:15px;
}

.find-password-div span {
  font-size:14pt;
  color:#039b7b;
}

.find-password-content input[type=password] {
  width:380px;
  margin-top:5px;
  margin-bottom:5px;
  font-size:14pt;
  padding-left:10px;
  color:#666666;
}

.find-password-button {
  padding-bottom:50px;
}

.find-password-button button {
  height:33px;
  background-color: #4CAF50;
  border:none;
  color:white;
  padding-left:15px;
  padding-right:15px;
  text-align:center;
  text-decoration: none;
  display: inline-block;
  cursor:pointer;
}
</style>
</head>
<body>
	
	<jsp:include page="../common/header.jsp" />
	<div class="find-password-page">
	
    	<div class="find-password-header">새로운 비밀번호 설정</div>
    	
    	<form action="resetPwd" method="post">
    	
    		<div class="find-password-content">
    	
        		<div class="find-password-div">  <span>새로운 비밀번호</span> 를 입력하세요.</div>
        	
        		<div><input type="password" name="userPwd" placeholder="새로운 비밀번호를 입력하세요."></div><br><br>
        		
        		<div class="find-password-div">  <span>새로운 비밀번호를 다시</span> 입력하세요.</div>
        	
        		<div><input type="password" name="checkPwd" placeholder="다시 입력하세요."></div>
        	
    		</div>
    	
    		<div class="find-password-button"><button id="passwordRequest">확인</button></div>
    		
    	</form>
	</div>
	<jsp:include page="../common/footer.jsp" />
	
</body>
</html>