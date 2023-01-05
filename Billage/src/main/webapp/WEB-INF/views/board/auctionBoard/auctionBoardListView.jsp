<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Draw</title>
<style>
    p {
        margin-bottom : 0px;
        padding : 0px;
    }
    .outer{
        width : 1200px;
        margin : auto;
        
    }
    .align-side{
    	display : flex;
    	justify-content: space-between;
    }
    .align-left{
        flex: auto;
    }
    .align-left-outer{
        display: flex;
        flex-wrap: wrap;
    }
    .one-content{
        width : 400px;
        height: 534px;
        padding-left: 8px;
        padding-right: 8px;
        padding-bottom: 16px;
    }
    .img-area{
        width : 100%;
        height : 414px;
        overflow: hidden;
    }
    .text-area{
        width: 344px;
        height: 100px;
        padding-top: 10px;
        padding-bottom: 10px;
        padding-left: 30px;
        padding-right: 10px;
    }
    .countnum{
        display: flex;
        flex-direction: row-reverse;
        font-size: 15px;
    }
    .textsize {
        font-size: 20px;
    }

</style>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <jsp:include page="../../common/header.jsp"/>
    	<div>dd</div>
    <!-- 전체를 감싸는 div -->
    <div class="outer">
		<div class="align-side">
			<div class="dropdown">
				<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
				정렬
				</button>
				<div class="dropdown-menu"> 
					<a class="dropdown-item" href="#">현재가격 순</a>
					<a class="dropdown-item" href="#">남은시간 순</a>
					<a class="dropdown-item" href="#">입찰수 순</a>
				</div>
			</div>
			<div><button type="button" class="btn btn-info">글쓰기</button></div>   
		</div>

		<div class="align-left-outer">
	        <div class="one-content">
	            <div class="img-area">
	                <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20151001_94%2Fbyitself_1443657275235dwe4K_JPEG%2F20150919_114529.jpg&type=sc960_832">
	            </div>
	            <div class="text-area">
	                <h3>책 제목</h3>
	                <p class="textsize">현재 가격 : 2250P</p>
	                <p class="textsize">남은 시간 : 00:00:00</p>
	                <p class="countnum">입찰 : 10 조회 : 10</p>
	            </div>
	
	        </div>
			
			 <div class="one-content">
	            <div class="img-area">
	                <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20151001_94%2Fbyitself_1443657275235dwe4K_JPEG%2F20150919_114529.jpg&type=sc960_832">
	            </div>
	            <div class="text-area">
	                <h3>책 제목</h3>
	                <p class="textsize">현재 가격 : 3000P</p>
	                <p class="textsize">남은 시간 : 00:00:00</p>
	                <p class="countnum">입찰 : 10 조회 : 10</p>
	            </div>
	
	        </div>
			
			 <div class="one-content">
	            <div class="img-area">
	                <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20151001_94%2Fbyitself_1443657275235dwe4K_JPEG%2F20150919_114529.jpg&type=sc960_832">
	            </div>
	            <div class="text-area">
	                <h3>책 제목</h3>
	                <p class="textsize">현재 가격 : 7000P</p>
	                <p class="textsize">남은 시간 : 00:00:00</p>
	                <p class="countnum">입찰 : 10 조회 : 10</p>
	            </div>
	
	        </div>
		</div>
    </div>	

    <jsp:include page="../../common/footer.jsp"/>

</body>
</html>