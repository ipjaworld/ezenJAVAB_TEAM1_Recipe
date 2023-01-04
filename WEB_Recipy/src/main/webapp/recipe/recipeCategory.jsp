<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file= "../header.jsp"%>

<article class="container">

<div class="categoryListTitle">
총 <b>${totalNumber.count}</b>개의 레시피가 있습니다.
	<ul class="nav nav-tabs2 pull-right">
		<li><a href="" onclick="sortBy()">정확순</a></li>
		<li><a href="" onclick="sortBy()">최신순</a></li>
		<li><a href="" onclick="sortBy()">추천순</a></li>
	</ul>
</div>
	<div class="main-contents-list row">
		<c:forEach items="${RecipeAllList}" var="recipeVO">
		   	<div class="col-md-3 pb-5 mb-5 recipe-card">
		   		<a href="recipe.do?command=recipeDetail&rnum=${recipeVO.rnum}" class="item">
		   			<img src="image${recipeVO.thumbnail}">
		   		</a>
		   		<h4>${recipeVO.subject}</h4>
		   		<span><img src="imageProfile/basic.jpg" width=20 height=20>${recipeVO.nick}</span>
		   		<h6><b>★★★★★</b>덧글&nbsp;&nbsp;조회수 ${recipeVO.views}</h6>
		   	</div>
		</c:forEach>

	</div>
	<jsp:include page="/paging/paging.jsp">
		<jsp:param name="command" value="recipe.do?command=recipeCategory" />
	</jsp:include>
</article>

<%@ include file="../footer.jsp" %>