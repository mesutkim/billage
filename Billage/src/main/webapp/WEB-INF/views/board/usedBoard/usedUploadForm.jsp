<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중고게시판 수정 폼</title>

<style>
    .outer{
        width : 800px;
        margin : auto;
    }
    .longdiv {
        width : 800px;
    }
    .shortdiv {
        width : 400px;
    }
    .inputdiv{
        width : 310px;
    }
    .textdiv{
        width : 80px;
    }
    .align-side{
        display: flex;
        justify-content: space-evenly;
    }    
    .align-left{
        display: flex;
    }
    .titlediv {
        width : 710px;
    }
    .btntitle {
        margin-top: 8px;
        margin-bottom: 8px;
        margin-left: 0px;
    }
    .btnleft {
        width : 384px;
        margin-right : 10px;
        margin-top : 8px;
    }
    .btnright {
        width : 384px;
        margin-left : 10px;
        margin-top : 8px;
    }
    .textdiv>p{
        font-size: 13px;
        padding-top: 10px;
    }
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="../../common/header.jsp"/>
    <div class="outer">

        <form action="update.ud" id="usedEnrollForm" method="post" enctype="multipart/form-data">
	
			<input type="hidden" name="userNo" value="${b.userNo}" />
			<input type="hidden" name="usedNo" value="${b.usedNo}" />
            <div class="longdiv align-left">
                <div class="textdiv">
                    <p>제목:</p>
                </div>
                <div class="titlediv">
                    <input type="text" class="form-control" id="used_title" placeholder="게시글 제목을 입력하세요" name="usedTitle" value="${ b.usedTitle }" required>
                </div>
            </div>


            <div class="longdiv align-left">
                <div class="shortdiv align-left">
                    <div class="textdiv">
                        <p>작가:</p>
                    </div>
                    <div class="inputdiv">
                        <input type="text" class="form-control" id="book_author" placeholder="작가명" name="bookAuthor" value="${ b.bookAuthor }">
                    </div>
                </div>
                <div class="shortdiv align-left">
                    <div class="textdiv">
                        <p>장르:</p>
                    </div>
                    <div class="inputdiv">
                        <input type="text" class="form-control" id="book_genre" placeholder="장르" name="bookGenre" value="${ b.bookGenre }">
                    </div>
                </div>
            </div>


            <div class="longdiv align-left">
                <div class="shortdiv align-left">
                    <div class="textdiv">
                        <p>책제목:</p>
                    </div>
                    <div class="inputdiv">
                        <input type="text" class="form-control" id="book_title" placeholder="책제목" name="bookTitle" value="${ b.bookTitle }">
                    </div>
                </div>
                
                
                <div class="shortdiv align-left">
                    <div class="textdiv">
                        <p>판매상태:</p>
                    </div>
                    <div class="inputdiv">
						<select name="stockStatus" id="stockStatus">
							<option value="N">판매중</option>
							<option value="Y">판매완료</option>
						</select>                   
					</div>
                </div>
                
                
            </div>
            
            
            <script>
            $(function(){
            	$('#stockStatus').val('${b.stockStatus}').attr('selected', selected);
            })
            </script>
            

            <div class="longdiv align-left">
                
                <div class="shortdiv align-left">
                    <div class="textdiv">
                        <p>판매가:</p>
                    </div>
                    <div class="inputdiv">
                        <input type="number" class="form-control" id="instantlyPrice" placeholder="판매가" name="point" value="${b.point}">
                    </div>
                </div>
                <div class="shortdiv align-left">
                    <div class="textdiv">
                        <p>첨부파일:</p>
                    </div>
                    <div class="inputdiv">
                    	<input type="file" id="upfile" class="form-control-file border" name="reUpfile"">
                    </div>
     				
     				<c:if test="${ not empty b.originName }">
			                      현재 파일 : 
	                	<a href="${b.changeName}" download="${b.originName}">${b.originName}</a>
	                    <input type="hidden" name="originName" value="${b.originName}">
	                    <input type="hidden" name="changeName" value="${b.changeName}">
                    </c:if>                    
                </div>
            </div>

            

            <div style="width : 790px;">
                <textarea class="form-control" rows="15" id="used_content" name="usedContent" style="resize: none;" placeholder="내용을 입력하세요">${b.usedContent}</textarea>
            </div>

            <div class="longdiv align-left">
                <button class="btnleft btn btn-dark">
                    <p class="btntitle">수정하기</p>
                </button>
                <button class="btnright btn btn-secondary">
                    <p class="btntitle">취소</p>
                </button>
            </div>
        </form> 
    </div>

    </div>

    <jsp:include page="../../common/footer.jsp"/>
</body>
</html>