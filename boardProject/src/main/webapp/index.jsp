<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/resources/css/main-style.css">

<!-- fontaswesom 아이콘 사용할 수 있는 스크립트 연결-->
<script src="https://kit.fontawesome.com/ac58eafae7.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<%-- 시멘틱태그 html 가져옴 --%>
	<main>

		<%-- hedaer.jsp추가 --%>

		<%-- <jsp:include page = "jsp파일경로" />
				- jsp 파일 경로는 webapp 폴더 기준으로 작성
				- JSP 액션 태그(jsp에 기본 내장됨)
				- 다른 jsp  파일의 코드를 현재 위치에 추가 
			 --%>

		<jsp:include page="/WEB-INF/views/common/header.jsp" />


		<section class="content">
			
			
			<section class="content-1">
				<h3>로그인된 회원 정보</h3>
			</section>


			<!-- 아이디/비밀번호/로그인 버튼 영역 -->
			<section class="content-2">

				<c:choose>
					<%--로그인이 안되었을 때  --%>
					<%-- EL empty : 비어있거나 null이면 true --%>
				 <c:when test="${empty sessionScope.loginMember}">
						<form action="/member/login" method="get" name="login-form" id="loginFrm">

							<fieldset class="id-pw-area">
								
								<section>
									<input type="text" name="inputEmail" placeholder="이메일">
									<input type="password" name="inputPw" placeholder="비밀번호">

								</section>
								
								<section>
									<button>로그인</button>
								</section>
								
							</fieldset>

							<label> 
								<input type="checkbox" name="saveId"> 아이디 저장
							</label>

							<!-- 회원가입 / Id / Pw 찾기 영역 -->
							<section class="signup-find-area">
								<a href="#">회원가입</a> <span>|</span> <a href="#">ID/PW 찾기</a>
							</section>

						</form>
					</c:when>
					
					

					<%--로그인이 되었을 때  --%>
					<c:otherwise>
						<artice class="login-area"> 
							<a> 
								<img src="/resources/images/user.png" id="memberProfile">
							</a>

							<div class="my-info">
								<div>
									<a href="#" id="nickname">${sessionScope.loginMember.memberNickName}</a>
									<a href="/member/logout" id="logoutBtn">로그아웃</a>
								</div>
	
								<p></p>
							</div>
						</artice>
					</c:otherwise>				
				</c:choose>
			</section>

		</section>
	</main>

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />



</body>
</html>