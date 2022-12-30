<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findAccountByForm.jsp</title>
<script src="script/main-sy.js" type="text/javascript"></script>
</head>
<body>
	<!-- 서윤 : 나중에 onkeyup으로 autoHypenPhone(this)? 추가  -->
	<form name="frm" method="post">
		<c:if test="${param.param=='id'}">
			<h1>아이디 찾기</h1>
			이름 <input type="text" name="name"/><br>
			전화번호 <input type="text" name="phone" placeholder="전화번호를 -포함 입력하세요"/><br>
			<c:if test="${Account.id != null}">아이디는 ${Account.id} 입니다.</c:if>
		</c:if>
		<c:if test="${param.param=='pwd'}">
			<h1>비밀번호 찾기</h1>
			이름 <input type="text" name="name"/><br>
			아이디 <input type="text" name="id"/><br>
			전화번호 <input type="text" name="phone" placeholder="전화번호를 - 포함 입력하세요"/><br>
			<c:if test="${Account.pwd != null}">비밀번호는 ${Account.pwd} 입니다.</c:if>
		</c:if>
		${message}<br>
		<input type="button" class="buttons" value="찾기" onClick="search('${param.param}')"/>
		<!-- <input type="submit" class="buttons" value="찾기"/> -->
		<input type="button" class="buttons" value="취소" onClick="self.close();"/>
	</form>
</body>
</html>