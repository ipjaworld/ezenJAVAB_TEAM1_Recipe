<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Recipe</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/style.css?after" rel="stylesheet">  
<script src="https://kit.fontawesome.com/74c64a7de1.js" crossorigin="anonymous"></script>
<script src="script/jquery-3.6.3.js" type="text/javascript"></script>
<script src="script/mainAction.js?after" type="text/javascript"></script>
</head>
<body>

<div id="wrap">
	
	<header>
        <div class="container">
           <div class="boxFlexTop">
	           <div><a class="navbar-brand" href="recipe.do?command=index">이젠 레시피 고민No!</a></div>
	           <div class="col-10">
	              	<input class="col-8" type="search" placeholder="원하는 재료나 음식 이름을 입력해주세요." aria-label="Search">
	           		<button class="btn btn-dark"" type="submit">검색</button>
	           </div>
	           <div><a href="recipe.do?command=admin">admin login</a></div>
	           <%-- <c:choose>
					<c:when test="${empty loginUser}">
						<div><a href="shop.do?command=loginForm">LOGIN</a></div>
						<div><a href="shop.do?command=contract">JOIN</a></div>
					</c:when>
					<c:otherwise>
						<li>${loginUser.name}(${loginUser.id})</li>
						<div><a href="shop.do?command=editForm">정보수정</a></div>
						<div><a href="shop.do?command=logout">LOGOUT</a></div>
					</c:otherwise>
				</c:choose> --%>
	           <div><a href="#"><img class="top_Icon" src="image/person1.png" ></a></div>
	           <div><a href="#"><img class="top_Icon" src="image/pensil1.png"></a></div>
	        </div>
        </div>
        
        


		<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #FF8000;">
		    <div class="container-fluid">
		      
		      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="navbar-toggler-icon"></span>
		      </button>
		      <div class="collapse navbar-collapse" id="navbarSupportedContent">
		        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		          <li class="nav-item">
		            <a class="nav-link active text-white" aria-current="page" href="#">메인</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link text-white" href="#">종류별</a>
		          </li>
                  <li class="nav-item">
		            <a class="nav-link text-white" href="#">테마별</a>
		          </li>
                  <li class="nav-item">
		            <a class="nav-link text-white" href="#">재료별</a>
		          </li>
                  <li class="nav-item">
		            <a class="nav-link text-white" href="#">추천</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link text-white" href="#">사이트맵</a>
		          </li>
		        </ul>
		      </div>
		    </div>
		  </nav>
	</header>
