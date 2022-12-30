<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<main class="">
    <div class="container">
    
    
    <div class="slider mt-5 mb-5" id="slider">
    	<div class="subtitle mb-3"><h2>종류별</h2></div>
        <div class="slide" id="slide1">
       		<c:forEach items="${sList}" var="recipeVO">
	       		<a href="recipe.do?command=recipeDetail&rnum=${recipeVO.rnum}" class="item">
	       			<img src="imageThumb/${recipeVO.image}" width=300 height=200>
	       		</a>
       		</c:forEach>
          
          <a href="recipe.do?command=recipeDetail&rnum=2" class="item"><img src="imageThumb/thumb2.jpg" width=300 height=200></a>
          <a href="recipe.do?command=recipeDetail&rnum=3" class="item"><img src="imageThumb/thumb3.jpg" width=300 height=200></a>
          <a href="recipe.do?command=recipeDetail&rnum=4" class="item"><img src="imageThumb/thumb4.jpg" width=300 height=200></a>
          <a href="recipe.do?command=recipeDetail&rnum=5" class="item"><img src="imageThumb/thumb5.jpg" width=300 height=200></a>
          <a href="recipe.do?command=recipeDetail&rnum=6" class="item"><img src="imageThumb/cabbage rolls thumb.jpg" width=300 height=200></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          
        </div>
        <button class="ctrl-btn pro-prev">Prev</button>
        <button class="ctrl-btn pro-next">Next</button>
      </div>
      
      <div class="slider mt-5 mb-5" id="slider">
      	<div class="subtitle mb-3"><h2>테마별</h2></div>
        <div class="slide" id="slide2">
          <a href="#" class="item"><img src="imageThumb/lemonadeThumb.jpg" width=300 height=200></a>
          <a href="#" class="item"><img src="imageThumb/clamThumb.jpg" width=300 height=200></a>
          <a href="#" class="item"><img src="imageThumb/cucumberThumb.jpg" width=300 height=200></a>
          <a href="#" class="item"><img src="imageThumb/eggs in soy broth thumb.png" width=300 height=200></a>
          <a href="#" class="item"><img src="imageThumb/majesobaThumb.jpg" width=300 height=200></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product1"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product1"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product1"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product1"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
        </div>
        <button class="ctrl-btn pro-prev">Prev</button>
        <button class="ctrl-btn pro-next">Next</button>
      </div>
      
      <div class="slider mt-5 mb-5" id="slider">
      	<div class="subtitle mb-3"><h2>재료별</h2></div>
        <div class="slide" id="slide3">
          <a href="#" class="item"><img src="imageThumb/pancakeThumb.jpg" width=300 height=200></a>
          <a href="#" class="item"><img src="imageThumb/peachThumb.jpg" width=300 height=200></a>
          <a href="#" class="item"><img src="imageThumb/piesoupThumb.jpg" width=300 height=200></a>
          <a href="#" class="item"><img src="imageThumb/pork_ricebowl.JPG" width=300 height=200></a>
          <a href="#" class="item"><img src="imageThumb/potatoes thumb.jpg" width=300 height=200></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product1"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product1"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product1"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product1"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product2"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
          <a href="#" class="item"><img src="http://via.placeholder.com/300x200?text=Product3"></a>
        </div>
        <button class="ctrl-btn pro-prev">Prev</button>
        <button class="ctrl-btn pro-next">Next</button>
      </div>
    
    
    </div>
</main>

<!-- 서윤 확인용 임시 div  -->
<div>
   서윤 확인용 : ${message}
   <c:if test="${loginUser.id!=null}">${loginUser.name}(${loginUser.id})님 로그인하셨습니다.
      <input type="button" value="로그아웃" onClick="location.href='recipe.do?command=logout'"/>
   </c:if>
   <c:if test="${loginAdmin.adminId!=null}">${loginAdmin.adminId}님 로그인하셨습니다.
      <input type="button" value="로그아웃" onClick="location.href='recipe.do?command=logout'"/>
   </c:if>
</div>

<%@ include file="footer.jsp" %>