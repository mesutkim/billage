<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>Insert title here</title>
	
	
	<!-- JavaScript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	<!-- CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
	
	<style>
		div{ box-sizing: border-box; }
		a { text-decoration: none; color: black; }
		ul { list-style:none; margin:0px; } 
		body{ padding-top:10px;}
		
		#all-header{ 
			width:100%;
			top:0;
			left:0;
			right:0;
 			background: white;
			z-index:1000;
			border-bottom: 1px solid gray;
		} 
		
		#header-outer {
			width: 1200px;
			height: 230px;
			margin: auto;

		}
	
		#outer-top { margin-top: 20px; height: 120px; }
		
		#header-outer > #outer-top > .header {
			float: left;
			text-align: center;
			width:400px;
		}
		

		#header-outer > #outer-top > #logo-area {  }

		#header-outer > #outer-top > #search-area > input, button { 
			margin-top:30px; 
			font-size:20px;
			padding:0px;
			
		 }
		 
		#header-outer > #outer-top > #search-area > input { width:300px; height:30px; border-bottom : 1px solid black;}

		#header-outer > #outer-top #login-area {  }
		
		#header-outer > #outer-bottom{ height: 100px;}

		#header-outer > #outer-bottom{ width: 100%; display:block; }

		#outer-bottom > ul > li {
			float: left;
			text-align:center;
			width:120px;
			height:70px;
			margin-top:20px;
			border-radius: 20px;
		}

		#outer-bottom > ul>li>a {
			text-align: center;
			font-size: 25px;
		}
		
		#outer-bottom > ul>li>a:hover {
			cursor: pointer;
			font-size: 28px;
			font-weight: 900;
		}
/*------------------------------------------------------------------------------------------------*/
		#modal-login-area{
			position: fixed;
	        width: 500px;
	        height:500px;
	        background-color: rgb(253, 219, 219);
	        border-radius: 20px;
	        transform: translate(-50%, -50%);
	        left: 50%;
	        top: 50%;
	        z-index: 1005;
	        text-align: center;
	        display: none;
		}
		
		#modal-login-area .close{
			font-size: 25px;
	        background-color:rgba(95, 152, 124, 0);
	        border: 1px solid rgba(245, 245, 220, 0);
	        cursor: pointer;
	        color:rgb(0, 0, 0);
	        padding-left: 455px;
		}
	
	
		
	</style>

</head>

<body>

<%-- ????????? ????????? / ????????? ?????? ??? ????????? ???  

		<c:choose>
			<c:when test="${ empty loginUser }">
				<div>
					<a href="userEnrollForm.me">????????????</a>
					<a href="#">???????????????</a>
				</div>
			</c:when>
		 	<c:otherwise> 
				<div>
					${ loginUser.nickname } ??? ???????????????!! <br> 
					<a href="myPage.me">???????????????</a>
				</div>			
			</c:otherwise>			
		</c:choose> 	


--%>
	<!-- alert ????????? -->
	<c:if test="${ not empty alertMsg }">
		<script>
			alertify.alert('', '${alertMsg}', function(){ alertify.success('??????'); });
		</script>
		<c:remove var="alertMsg" />
	</c:if>

	<div id="all-header">
		<div id="header-outer">
			<div id="outer-top">
				<div class="header" id="logo-area">
					<a href="/billage"><img src="resources/images/logo.png" width="80%;" height="80%;"></a>
				</div>
	
				<div class="header" id="search-area">
					<input type="text" />
					<button type="submit" >??????</button>
				</div>
	
				<div class="header" id="login-area">			
					<c:choose>
						<c:when test="${ empty loginUser }">
							<div>
								<a href="userEnrollForm.me">????????????</a>
								<a id="login-btn" >???????????????</a>
							</div>
						</c:when>
						<c:when test="${ loginUser.userId eq 'test01' }">
							<div>
								${ loginUser.nickname } ??? ???????????????!! <br> 
								<a href="userList.ad">?????????</a>
								<a href="logout.me">????????????</a>
							</div>
						</c:when>
						<c:otherwise>
							<div>
								${ loginUser.nickname } ??? ???????????????!! <br> 
								<a href="mypage.me">???????????????</a>
								<a href="logout.me">????????????</a>
							</div>
						</c:otherwise>
					</c:choose>
	
				</div>
			</div> <!-- outer-top???  -->
			
			<div id="outer-bottom"> 
				<ul>
					<li><a href="list.cl">??????</a></li>
					<li><a href="list.nv">??????</a></li>
					<li><a href="list.rt">??????</a></li>
					<li><a href="list.re">??????</a></li>
					<li><a href="list.dr">??????</a></li>
					<li><a href="list.ac">??????</a></li>
					<li><a href="list.ud">??????</a></li><!-- ????????????????????? -->
					<li><a href="#">??????</a></li>
					<li><a href="center.cs">????????????</a></li>
				</ul>
			</div> <!-- outer-bottom ??? -->
		</div> <!-- header-outer ??? -->
	</div> <!-- all-header??? -->
    <!-- --------------------------------------- -->
    
		<div id="modal-login-area">
			<div id="login-screen">
			 <button type="button" class="close">&times;</button>
				<h1>?????????</h1>
			    
				<form action="login.me" method="post">
					<div class="control-group">
						<input type="text" class="login-field" placeholder="???????????? ???????????????." id="login-name" name="userId">
					</div>
					
					<div class="control-group">
						<input type="password" class="login-field" placeholder="??????????????? ???????????????." id="login-pass" name="userPwd"/>
					
						<button type="submit" class="">???????????????</button>
						<button type="button" class="login-link" id="goEmailForm">??????????????????</button>
					</div>
				</form>
			</div>
		
	</div> <!-- all-header??? -->

	<script>
		$(function(){
			// ????????? ????????? ????????? ????????? ????????? 
	        $('#login-btn').click(function(){
	        	$('#modal-login-area').fadeIn();
	        });
	        
			$('.close').click(function(){
				$('#modal-login-area').fadeOut();
			});
			
			$('#goEmailForm').click(function(){
				location.href='writeEmailForm.me';
			});
		
		});
	
	</script>


</body>

</html>