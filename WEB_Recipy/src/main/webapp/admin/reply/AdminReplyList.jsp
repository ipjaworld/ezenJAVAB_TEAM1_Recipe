<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/admin_header.jsp"%>
<%@ include file="/admin/sub_menu_left.jsp"%>
<%@ include file="/admin/sub_menu_right.jsp"%>

<article>
	<h1>댓글리스트</h1>  
	<form name="frmm" method="post">
	<table style="float:right; ">
		<tr><td>댓글작성자 ID <input type="text" name="key" value="${key3}">
		<input class="btn" type="button" value="검색" onclick="go_search('adminReplyList')">
		<input class="btn" type="button" name="btn_total" value="전체보기 "	onClick="go_total('adminReplyList')"></td> </tr>
	</table><br>
	<table id="replyList">
		<tr><th>번호</th><th>아이디</th><th>레시피 번호</th><th>내용</th><th>작성일자</th></tr>
	    <c:forEach items="${replyList}" var="replyVO">  
		    <tr>
		    <td><input type="checkbox" name="delrp" value="${replyVO.replyseq}">${replyVO.replyseq}</td>
		    <td>${replyVO.id}</td><td>${replyVO.rnum}</td><td>${replyVO.content}</td>
		    <td><fmt:formatDate value="${replyVO.replydate}"/></td></tr>
	  </c:forEach>
	  <tr>
	  <th><a href="#" onClick="go_reply_delete();">댓글 삭제하기</a></th>
	  <tr>
	</table>
	<jsp:include page="/admin/paging/paging.jsp">   
	    <jsp:param value="recipe.do?command=adminReplyList" name="command"/>
	</jsp:include>
	</form>
</article>

<%@ include file="/admin/footer.jsp"%>