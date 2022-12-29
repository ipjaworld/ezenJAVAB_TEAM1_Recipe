<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file= "../header.jsp"%>
<%@ include file="sub_image_menu.jsp" %>
<article>
<h2> 1:1 고객 게시판</h2>
	<h3> 고객님의 질문에 대해서 운영자가 1:1답변을 드립니다.</h3>
	<form name="formm" method="post" action="shop.do">
		<input type="hidden" name="command" value="qnaWrite">
		<fieldset>
			<legend>Board Info</legend>
			<label>Title</label><input type="text" name="subject" size="60"><br>
			<label>Content</label><textarea rows="8" cols="65" name="content"></textarea>
		</fieldset>
		<div class="clear"></div>
		<div id="buttons" style="float:right">
			<input type="submit" value="글쓰기"  class="submit">
			<input type="reset" value="취소"  class="cancel">
			<input type="button" value="레시피계속보기"  class="submit" onclick="location.href='recipe.do?command=index'">
		</div>
	</form>
</article>
<%@ include file="../footer.jsp" %>