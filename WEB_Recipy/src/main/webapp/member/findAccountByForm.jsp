<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findAccountByForm.jsp</title>
</head>
<body>
	<form name="frm" method="post">
		<c:if test="${param.param=='id'}">
			<h1>아이디 찾기</h1>
			이름 <input type="text" name="name"/><br>
			전화번호 <input type="text" name="phone" onkeyup="addHypen(this)" placeholder="전화번호를 - 없이 입력하세요"/><br>
		</c:if>
		<c:if test="${param.param=='pwd'}">
			<h1>비밀번호 찾기</h1>
			이름 <input type="text" name="name"/><br>
			아이디 <input type="text" name="id"/><br>
			전화번호 <input type="text" name="phone" onkeyup="addHypen(this)" placeholder="전화번호를 - 없이 입력하세요"/><br>
		</c:if>
		<input type="button" class="buttons" value="찾기" onClick="search('${param.param}')"/>
		<input type="button" class="buttons" value="취소" onClick="self.close();"/>
	</form>
</body>
</html>