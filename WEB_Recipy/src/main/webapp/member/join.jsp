<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<article>
	<form method="post" name="joinForm"  enctype="multipart/form-data">
		<!-- <input type="hidden" name="command"  value="join"> -->
		<fieldset><legend>Basic Info</legend><br>
			<label>프로필사진</label><input type="file" name="img"><br>
			<label>아 이 디</label><input type="text" name="id" size="12" onkeyup="chkIdCode(event)"><input type="hidden" name="reid">
		    <input type="button" value="중복 체크" class="dup" onclick="idcheck(event)"><br>
		    <label>닉 네 임</label><input type="text" name="nickname" size="12"><br>
		    <label>비밀번호</label><input type="password" name="pwd" id="userpwd"><br> 
		    <label>비밀번호 확인</label><input type="password" name="pwdCheck" id="userpwdchk"><br> 
            <p id="error1" style="color:red"> </p>
		    <label>이     름</label><input type="text"  name="name"><br> 
		    <label>전화번호</label><input  type="text" name="phone" onkeyup="chkPhoneCode(event)"><br>
		    <label>우편번호</label><input type="text" name="zip_num"   size="10" >      
		    <input type="button" value="주소 찾기" class="dup" onclick="post_zip()"><br>
			<label>주     소</label><input type="text" name="address1"   size="50"><br>
			<label>상세주소</label><input type="text" name="address2"   size="25"> <br>
			<label>이메일</label><input type="text"  name="email" id="useremail"><br> 
            <p id="error2" style="color:red"> </p>
            <input type="hidden" name="useyn" value="Y">
		</fieldset>
		
		<div class="clear"></div>
		<div id="buttons">
		    <input type="button" value="회원가입" class="submit" onclick="go_save()"> 
		    <input type="reset" value="취소" class="cancel" onclick="location.href='recipe.do?command=index'">
		</div>
	</form>
</article>


<%@ include file="../footer.jsp" %>
