<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file= "../header.jsp"%>

<article>

		<section class="input-area">
            <label>재료 추가</label>
            <button id="add-button">+</button>
        </section>

	<form name="frm" method="post" enctype="multipart/form-data" >
		<table id="list">
			<tr>
				<th><label>제목</label></th><td width="343" colspan="5">
		       	<input type="text" name="name" size="47" maxlength="100"></td>
		    </tr>
		    <tr>
				<th><label>썸네일 이미지</label></th>
				<td width="343" colspan="5"><input type="file" name="image"></td>
			</tr>  

			<tr>
				<th><label>종류</label></th>
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
				<th><label>인분</label></th><td width="72">	<input type="text" name="howMany" size="11" ></td>
			</tr>
			<tr>
				<th><label>가격</label></th><td width="70"><input type="text" name="price" size="11" ></td>
			</tr>
			<tr>
				<th><label>소요 시간</label></th><td width="70"><input type="text" name="cookingTime" size="11"></td>
			</tr>
			<tr>
				<th><label>난이도</label></th><td width="72">	<input type="text" name="difficulty" size="11" ></td>
			</tr>
			
			<tr>
				<th><label>상세설명</label></th><td colspan="5">
				<textarea name="content" rows="8" cols="70"></textarea></td>
			</tr>
			
		</table><br>
		

        <section class="task-area">
        	<div class="task-tabs">
                <div id="under-line"></div>
                <div id="all">
                    모두
                </div>
                <div id="onGoing">
                    진행중
                </div>
                <div id="done">
                    끝남
                </div>
            </div>
            <div id="task-board">
            	<div class="recipe-process">
                	<label>Profile</label><input type="file" name="img">
                	<textarea name="content" rows="4" cols="50"></textarea>
            	</div>
            </div>

        </section>
		<div id="buttons">
			<input class="btn" type="button" value="등록" onClick="go_recipe(save)">           
			<input class="btn" type="button" value="목록" onClick="go_recipe(list)"> 
		</div>
	</form>
</article>

<%@ include file="../footer.jsp" %>