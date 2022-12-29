<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file= "../header.jsp"%>

<article>
	<form name="frm" method="post" enctype="multipart/form-data" >
		<table id="list">
			<tr>
				<th>제목</th><td width="343" colspan="5">
		       	<input type="text" name="name" size="47" maxlength="100"></td>
		    </tr>
		    <tr>
				<th>썸네일 이미지</th>
				<td width="343" colspan="5"><input type="file" name="image"></td>
			</tr>  

			<tr>
				<th>종류</th>
				<td colspan="5">
					<select name="kind">
						<option value="">선택</option>
						<option value="type1">밥/죽</option>
						<option value="type2">국/탕/찌개</option>
						<option value="type3">반찬</option>
						<option value="type4">원플레이트</option>
						<option value="type5">음료</option>
						<option value="type6">디저트</option>
						<option value="type7">직접 입력</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th>인분</th><td width="72">	<input type="text" name="howMany" size="11" ></td>
			</tr>
			<tr>
				<th>가격</th><td width="70"><input type="text" name="price" size="11" ></td>
			</tr>
			<tr>
				<th>소요 시간</th><td width="70"><input type="text" name="cookingTime" size="11"></td>
			</tr>
			<tr>
				<th>난이도</th><td width="72">	<input type="text" name="difficulty" size="11" ></td>
			</tr>
			
			<tr>
				<th>상세설명</th><td colspan="5">
				<textarea name="content" rows="8" cols="70"></textarea></td>
			</tr>
			
		</table>
		<input class="btn" type="button" value="등록" onClick="go_recipe_save()">           
		<input class="btn" type="button" value="목록" onClick="go_recipe_list()"> 
	</form>
</article>

<%@ include file="../footer.jsp" %>