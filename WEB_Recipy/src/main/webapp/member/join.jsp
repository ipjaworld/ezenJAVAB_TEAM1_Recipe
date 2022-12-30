<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="sub_image_menu.html"  %>

<article>
	<form method="post" name="joinForm" action="recipe.do?command=join" enctype="multipart/form-data">
		<!-- <input type="hidden" name="command"  value="join"> -->
		<fieldset><legend>Basic Info</legend><br>
			<label>Profile</label><input type="file" name="porfile"><br>
			<label>User ID</label><input type="text" name="id" size="12" onkeyup="chkIdCode(event)"><input type="hidden" name="reid">
		    <input type="button" value="중복 체크" class="dup" onclick="idcheck(event)"><br>
		    <label>Nick Name</label><input type="text" name="nickname" size="12"><br>
		    <label>Password</label><input type="password" name="pwd" id="userpwd"><br> 
		    <label>Retype Password</label><input type="password" name="pwdCheck" id="userpwdchk"><br> 
            <p id="error1" style="color:red">1</p>
		    <label>Name</label><input type="text"  name="name"><br> 
		    <label>Phone Number</label><input  type="text" name="phone" onkeyup="chkPhoneCode(event)"><br>
		</fieldset>
		
		<fieldset><legend>Optional</legend>
		    <label>Zip Code</label><input type="text" name="zip_num"   size="10" >      
		    <input type="button" value="주소 찾기" class="dup" onclick="post_zip()"><br>
			<label>Address</label><input type="text" name="address1"   size="50"><br>
			<label>&nbsp;</label><input type="text" name="address2"   size="25"> <br>
			<label>E-Mail</label><input type="text"  name="email" id="useremail"><br>
            <p id="error2" style="color:red">1</p>
		</fieldset>
		
		<div class="clear"></div>
		<div id="buttons">
		    <input type="button" value="회원가입" class="submit" onclick="go_save()"> 
		    <input type="reset" value="취소" class="cancel">
		</div>
	</form>
</article>


<%@ include file="../footer.jsp" %>
