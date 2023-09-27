<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!-- footer는 주요콘텐츠가 아니라서 main 태그 안에서 사용하지 않음. -->
<footer>
  <P>Copyright &copy; KH Information Educational Institue E-Class</P>

  <section>
    <a href="#">프로젝트 소개</a>
    <span>|</span>
    <a href="#">이용약관</a>
    <span>|</span>
    <a href="#">개인정보처리방침</a>
    <span>|</span>
    <a href="#">고객센터</a>
  </section>
</footer>

<%-- session에 message가 존재할 경우 --%>
<c:if test="${ not empty sessionScope.message }">
	
	<script>
		// EL/JSTL 구문이 JS 코딩보다 먼저 해석됨
		// 문자열의 경우 따옴표가 없는 상태이니 옆에 붙여줘야함	
		alert('${message}');	
	</script>
	
	<%-- 
		session에 mesage를 추가하면
		브라우저 종료 또는 만료 전까지 계속 메세지가 출력된다.
		
		->해결 : 1회 출력 후 session에서 messgae를 삭제하면됨	
	--%>
	
	<c:remove var="message" scope="session"/>
	
</c:if>