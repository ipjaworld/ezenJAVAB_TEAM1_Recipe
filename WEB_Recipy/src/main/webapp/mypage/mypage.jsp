<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%-- <%@ include file="/admin/sub_menu_left.jsp"%>
<%@ include file="/admin/sub_menu_right.jsp"%> --%>

    <article>
   <div id="memberdetail">
     
      <form method="post" name="formm">
      
         <fieldset>
         <legend>Member Detail Info</legend>         
            <span style="float:left; margin-right:20px">
               <img src="imageProfile/${loginUser.img}" width="300" height="450" onerror="this.src='imageProfile/basic.jpg'" style="border-radius:20px"/>
            </span>

            <label>이 름:&nbsp;&nbsp;&nbsp; ${loginUser.name}</label><br/>
            <label>아이디:&nbsp;&nbsp;&nbsp; ${loginUser.id}</label><br/>
            <label>전화번호:&nbsp;&nbsp;&nbsp; ${loginUser.phone}</label><br/>
            <label>이메일:&nbsp;&nbsp;&nbsp; ${loginUser.email}</label><br/>
            <label>닉네임:&nbsp;&nbsp;&nbsp; ${loginUser.nick}</label><br/>
            <label>주  소:&nbsp; ${loginUser.address1} &nbsp; ${loginUser.address2}</label><br/>
            <label>우편번호:&nbsp;&nbsp;&nbsp; ${loginUser.zip_num}</label><br/>
            <label>가입일자:&nbsp;&nbsp;&nbsp; ${loginUser.indate}</label><br/>                 
         </fieldset>
         <div class="clear"></div>
         <div id="buttons">
            <input type="button" value="정보수정" class="cancel" onclick="location.href='recipe.do?command=updateMemForm'">
			<input type="button" value="회원탈퇴" class="cancel" onclick="location.href='recipe.do?command=withDrawal'">
         </div>
      </form>
   </div>
</article>

<%@ include file="../footer.jsp"%>