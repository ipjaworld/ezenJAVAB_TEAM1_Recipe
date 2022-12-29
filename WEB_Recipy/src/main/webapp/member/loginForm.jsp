<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<article>
	<h1>Login</h1>
	<form method="post" action="recipe.do" name="loginFrm">
		<input type="hidden" name="command" value="login"/>
		
		<fieldset> 
			<legend></legend>
				<label>User ID</label><input name="id" type="text"/><br>
				<label>Password</label><input name="pwd" type="password"/><br>
		</fieldset>
		<div id="buttons">
			<input type="submit" value="로그인" class="submit" onClick="return loginCheck()"/>
			<input type="button" value="회원가입" class="cancel" onClick="location.href='recipe.do?command=joinForm'"/>
			<input type="button" value="아이디 비밀번호 찾기" class="submit" onClick="find_account();"/>
		</div><br><br>
		<div>&nbsp;&nbsp;&nbsp;${message}</div>
	</form>
</article>

<%@ include file="../footer.jsp" %>