<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕 여긴 푸터쓰</title>
<style>

      @font-face {
     font-family: 'S-CoreDream-3Light';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
     font-weight: normal;
     font-style: normal;
    }
	
	#footer-area{
		display:block;
	}

    #ft-list-area > ul li{
        list-style: none;
        line-height: 30px;
    }

	#ft-list-area li a{
        text-decoration : none;
        color:black;
	}

    #ft-list-area li a:hover{
        font-weight: 900;
    }


    #ft-info-area{
        margin-top: 40px;
        margin-left: 20px;
    }

    #ft-list-area{
    	margin-left:30px;
        margin-top: 28px;
    }

    #footer-area{
        width:100%;
        /* background-color: blanchedalmond; */
        height:450px;
        

    }
    #footer-area-all, #footer-area-right, #footer-area-left{
        height: 450px;
    }

    #footer-area-all{
        width:1200px;
        margin: auto;
        /*background-color: aliceblue;*/
        
    }
    
    #footer-area-right{
        width:600px;
       /* background-color: rgba(161, 165, 156, 0.678);*/
        display: inline-block;
    }


    #footer-area-left{
        width:600px;
      /*  background-color: rgba(168, 178, 197, 0.603);*/
        float: left;
        
    }
    
    .click-box {
        margin-top: 10px;
        width:100px;
        height: 60px;
        background-color: rgba(98, 154, 133, 0.668);
        color: white;
        cursor: pointer;
        border: 1px solid rgba(98, 154, 133, 0.668);
        border-radius: 30px;
        font-size: 20px;
        font-weight: bold;
    }

    .click-box:hover{
        font-weight: bold;
        background-color:  rgba(138, 178, 164, 0.837);
    }


    #ft-btn-table img{
		width:70%;
        height:50%;
        margin: auto;

    }


    #ft-btn-table{
        width:500px;
        margin: auto;
    }
	
	.ft-img-area{
		height: 200px;
	}






</style>

</head>
<body>
	
		<br><br><br>
	<hr>
	<div id="footer-area">
        <div id="footer-area-all">
            <div id="footer-area-left">
                <!-- -->
                <div id="ft-list-area">
                    <ul>
                        <li><a href="#">회사소개</a></li> 
                        <li><a href="#">광고문의</a></li> 
                        <li><a href="#">인재채용</a></li> 
                        <li><a href="#">이용약관</a></li> 
                        <li><a href="#">개인정보처리방침</a></li> 
                        <li><a href="#">커뮤니티 가이드라인</a></li> 
                    </ul>
                </div>

               <div id="ft-info-area">
                    <p>
                        (주)Billage친구들 <br>
                        서울특별시 남대문로120 대일빌딩 2층 C-Class <br>
                        대표이사:6명 <br>
                        사업자 등록번호 : 123-12-1234555 <a href="#">[사업자정보확인]</a> <br>
                        고객센터:02-1234-1234 <br>
                        <br>
                        © 2023 Billage Co., Ltd. All rights reserved.
                    </p>
               </div>
            </div>
            <div id="footer-area-right">
                <table id="ft-btn-table">
                    <tr>
                        <th class="ft-img-area" colspan="2">
                            <img src="resources/images/logo.png" alt="">
                        </th>
                    </tr>
                    <tr>
                        <th class="ft-table-area"><button class="click-box" id="center">고객센터</button></th>
                        <td> 커맨드센터아님ㅎ😉 </td>
                    </tr>
                    <tr>
                        <th class="ft-table-area"><button class="click-box" id="apply">연재신청</button></th>
                        <td> 연재신청하세용 </td>
                    </tr>
                    <tr>
                        <th class="ft-table-area"><button class="click-box" id="notice">공지사항</button></th>
                        <td> billage한 공지공지사항사항 👀🌼 </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    
    

    
    
    
    
    
    <script>
    // 푸터 하단 각종 이동
    $(function () {
    	
        $('#center').click(function () {
            location.href = "enroll.iq";
        })
        $('#apply').click(function () {
            location.href = "request.se";
        })
        $('#notice').click(function () {
            location.href = "enroll.iq";
        })
        
      
        
        
        
        
        
   });
    
    
    
    
    
    
    </script>
</body>
</html>