<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findAccountForm.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<!-- id / 비밀번호 찾기 선택 후 별도 팝업 폼 -->
	<!-- 또는 조건문으로 하단에 찾는 조건(id : 이름, 폰 번호   / pw : 이름, 아이디, 폰 번호) -->
	<!-- 정식 인증이 불가능하기 때문에 0000 처럼 임의의 인증 번호 쳐도 인증 되도록   -->
	<input type="button" value="ID 찾기" onClick="findAccountBy('id')"/>
	<input type="button" value="비밀번호 찾기" onClick="findAccountBy('pwd')"/>
	
	
	
</body>
</html>