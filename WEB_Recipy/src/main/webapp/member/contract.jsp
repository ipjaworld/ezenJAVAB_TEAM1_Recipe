<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="sub_image_menu.html" %>

<article>
	<h2>회원 가입 약관</h2>
	<form id="join" method="post" name="contractFrm">
		
		언제나 새로운 즐거움이 가득한 이천개레시피의 회원가입 페이지 입니다. <br>
		이천개레시피의 회원가입은 무료이며, 회원님의 개인신상에 관한 정보는 ‘정보통신망이용촉진 
		및 정보보호등에	관한 법률’에 의해 회원님의 동의없이 제 3자에게 제공되지 않으며, 철저히 
		보호되고 있사오니 안심하고 이용하시기	바랍니다.<br><br>	
		
		<textarea rows="15" cols="100"></textarea>
		
		<br><br>
		<div style="text-align: center;">
			<input type="radio" name="okon" > 동의함 &nbsp; &nbsp; &nbsp;
			<input type="radio" name="okon" checked> 동의안함
		</div>

		<input type="button" value="Next" class="submit" onClick="go_next();" style="float: right;" >
	</form>
</article>

<%@ include file="../footer.jsp" %>

