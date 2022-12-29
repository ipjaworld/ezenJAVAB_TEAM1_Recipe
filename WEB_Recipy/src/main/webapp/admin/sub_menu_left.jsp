<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<nav id="sub_menu">

<div class="sub_menu_item">
	<div class="smi_title">
        <h3>레시피 관리</h3>
    </div>
    <div class="smi_content">
        <div><a href="recipe.do?command=adminRecipeList">레시피 리스트</a></div>
    </div>
</div>
<div class="sub_menu_item">
    <div class="smi_title">
        <h3>회원 관리</h3>
    </div>
    <div class="smi_content">
        <div><a href="recipe.do?command=adminMemList&page=1&key=">회원 리스트</a></div>
    </div>
</div>
<div class="sub_menu_item">
    <div class="smi_title">
        <h3>댓글 관리</h3>
    </div>
    <div class="smi_content">
        <div><a href="recipe.do?command=adminReplyList&page=1&key=">댓글 리스트</a></div>
    </div>
</div>
<div class="sub_menu_item">
    <div class="smi_title">
        <h3>Q&A 관리</h3>
    </div>
    <div class="smi_content">
        <div><a href="recipe.do?command=adminQnaList">Q&A 리스트</a></div>
    </div>
</div>

</nav>