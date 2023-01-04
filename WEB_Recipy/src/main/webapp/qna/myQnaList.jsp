<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file= "../header.jsp"%>


<article>
<h2> 나의 게시판</h2>
<h5> 고객님의 질문에 대해서 운영자가 1:1답변을 드립니다.</h5>
<form name="formm" method="post">
<table id="#" style="width:100%;">
	<tr><th>번호</th><th>제목</th><th>등록일</th><th>답변 여부</th></tr>
	<c:forEach items="${qnaList}" var="qnaVO">
		<tr><td>${qnaVO.qseq}</td>
			<td><a href="recipy.do?command=qnaDetail&qseq=${qnaVO.qseq}">${qnaVO.qsubject}</a>
				<!-- 제목 옆에 비밀글 표시 작업 0:공개, 1:비공개글 -->
				<c:if test="${qnaVO.secret==1}">&nbsp;<span style="font-size:60%">비밀글</span></c:if>
			</td>
			<td><fmt:formatDate value="${qnaVO.qnadate}" type="date" /></td>
			<td><c:choose>
			 	<c:when test="${qnaVO.rep==1}">no</c:when>
			 	<c:when test="${qnaVO.rep==0}">yes</c:when>
			</c:choose></td>
		</tr>
	</c:forEach>
</table><div class="clear"></div>
<!-- 여기서부터 시작! -->
	<div id="paging" style="font-size:120%; font-weight:bold; margin-left:300px">
		<!-- 페이지를 클릭했을때 이동할url을 변수에 저장 -->
		<c:url var="action" value="recipy.do?command=qnaList"/>
		
		<!-- 리퀘스트로 전달된 paging 객체값들을 이용 -->
		<!-- 이전 버튼 표시 -->
		<c:if test="${paging.prev}">
			<a href="${action}&page=${paging.beginPage-1}">◀</a>&nbsp;
		</c:if>
		
		<!-- 이동할 페이지들 표시 beginPage부터 endPage까지-->
		<c:forEach begin="${paging.beginPage}" end="${paging.endPage}" var="index">
		<c:choose>
				<c:when test="${paging.page==index}">
					<span style="color:red">${index}&nbsp;</span>
				</c:when>
				<c:otherwise>
					<a href="${action}&page=${index}">${index}</a>&nbsp;
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<!-- 반복실행중 지금 표시하려는 페이지와 현재 보려는 페이지번호가 같다면 링크없음 -->
		<!-- 같지 않다면 파라미터로 표시하려는 페이지를 붙여서 링크 설정 -->
				
		<!-- 다음 버튼 표시  -->
		<c:if test="${paging.next}">
			<a href="${action}&page=${paging.endPage+1}">▶</a>&nbsp;
		</c:if>
	</div>
</form>
</article>

<%@ include file="../footer.jsp" %>