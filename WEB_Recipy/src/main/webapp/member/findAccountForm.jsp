<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findAccountForm.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
<script src="script/main-sy.js" type="text/javascript"></script>
</head>
<body>
	<!-- id / 비밀번호 찾기 선택 후 별도 팝업 폼 -->
	<!-- 서윤 : 인증 방식 수정 예정  -->
	<input type="button" value="ID 찾기" onClick="findAccountBy('id')"/>
	<input type="button" value="비밀번호 찾기" onClick="findAccountBy('pwd')"/>
	
	
	
</body>
</html>