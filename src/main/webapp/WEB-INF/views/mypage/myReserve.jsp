<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>

#line2 {
	background-color: gray;
	height: 3px;
	width: 875px;
}

.h_left{
	width: 350px;
	height: 300px;

	float:left;
	margin-left:30px;
	margin-top:20px;
}
.h_right{
	width: 350px;
	height: 300px;

	float:left;
	margin-left:30px;
	margin-top:20px;
}
/* 메인 영역 */
.main{
    width: 1200px;
    margin: 0 auto;
    margin-top: 50px;
    overflow: hidden;
}
.main>div{
    float: left;
}
/* 메인 내부 서브 네비 */
.main-left-box{
    width: 230px;
    padding: 23px;
    box-sizing: border-box;
    background-color: rgb(224, 219, 239);
    margin-right: 60px;
}
.main-left-box>h2{
    margin: 0;
    height: 50px;
    cursor: default;
    border-bottom: 3px solid #565c54;
    margin-bottom: 25px;
}
.main-left-box ul{
    list-style-type: none;
    padding: 0;
}
.main-left-box ul>*{
    text-indent: 5px;
}
.main-left-box>ul>li>span{
    font-family: 'ns_b';
    font-size: 18px;
    cursor: default;
    display: block;
    border-bottom: 1px dotted #b9a989;
    padding-bottom: 8px;
    margin-bottom: 8px;
}
.subnavi{
    margin-bottom: 25px;
}
.subnavi a{
    display: block;
    text-decoration: none;
    font-size: 15px;
    line-height: 23px;
    margin-bottom: 2px;
    position: relative;
}
.subnavi a>span{
    position: absolute;
    right: 10px;
    font-size: 10px;
    display: none;
}

/* 메인 콘텐츠 설정 */
.main-content{
    width: 875px;
}
.classForm{
  width:875px;
  boder:3px solid black;
  font-size:12px;
 

  }
  .main{
  margin-bottom:40px;
  }

</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
    <div class="main">
        <div class="main-left-box">
            <h3>마이페이지</h3>
           <ul>
				<li>
					<ul class="subnavi">
						<li><a href="#">내정보 조회 및 수정<span>&gt;</span></a></li>
						<li><a href="#" id="lf-click">내 구매내역<span>&gt;</span></a></li>
						<li><a href="#">쿠폰함<span>&gt;</span></a></li>
						<li><a href="#">회원탈퇴<span>&gt;</span></a></li>
						<li><a href="#">참여한 경연대회<span>&gt;</span></a></li>
						<li><a href="#">요리클래스 예약내역<span>&gt;</span></a></li>
						<li><a href="#">Dm내역<span>&gt;</span></a></li>
						<li><a href="#">follwer 게시글<span>&gt;</span></a></li>
						<li><a href="#">찜한 레시피<span>&gt;</span></a></li>
					</ul>
				</li>
				<li><span>my write</span>
					<ul class="subnavi">
						<li><a href="#">작성후기<span>&gt;</span></a></li>
						<li><a href="#" id="lf-click">작성 게시글<span>&gt;</span></a></li>
						<li><a href="#">내 작성 레시피<span>&gt;</span></a></li>

					</ul>
			</li>
			</ul>
        </div>
        <!-- 메인 콘텐츠 -->
        <div class="main-content">
            <h3 id="h_hotel">클래스 예약내역</h3>
            <div id="line2"></div><br>
            <table border="1" class="classForm">
                <tr>
                    <th>예약번호</th>
                    <th>요리클래스</th>
                    <th>인원</th>
                    <th>클래스시작일</th>
                    <th>클래스종료일</th>
                    <th>수강료</th>
                    <th>수업시간</th>
                    <th>수업장소</th>
                    <th>상태</th>
                    <th>예약수정</th>
                    <th>예약취소</th>
                </tr>
                    <c:forEach items="${list}" var="mcr" varStatus="i">
                <tr>
                    <td>${mcr.rsrvNo }</td>
                    <td>${mcr.classTitle }</td>
                    <td>${mcr.classCurrNop }</td>
                    <td>${mcr.classStart }</td>
                    <td>${mcr.classEnd }</td>
                    <td>${mcr.classPrice }</td>
                    <td>${mcr.classTime }</td>
                    <td>${mcr.classLocation }</td>
                    <td>${mcr.classStatus }</td>
                    <td><button value="수정" id="modify"><a href="#">수정</a></button></td>
                    <td><button value="취소" id="delete"><a href="#">삭제</a></button></td>
                </tr>
            
                </c:forEach>
            </table>

        </div>
        
        </div>
      <jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>
</html>