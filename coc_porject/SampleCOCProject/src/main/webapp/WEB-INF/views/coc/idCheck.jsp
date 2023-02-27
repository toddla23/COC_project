<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
	<link href="${path}/resources/css/style.css" rel="stylesheet"/> 	
	<link href="${path}/resources/css/idCheck.css" rel="stylesheet"/> 	

	<style>
		body{
			font-family: 'Nana';
		}
		</style>

</head>

<body>

	<div id="container">
		<div id="check">
			<form method="POST">
				<input type="hidden" id="is_dup" value="${data.is_dup}">
				<input type="text" name="id" id="id_2" value="${data.id}">
				<input type="submit" value="확인">	
				<input type="button" value="닫기" onclick="sendValue();">				
							
				<p>${data.dup }</p>
			</form>
		</div>
	
	</div>
    <script>
      function sendValue() {
    	  console.log(document.getElementById("is_dup").value);
    	  if(document.getElementById("is_dup").value == "0"){
	        window.opener.document.getElementById( "id_1" ).value = document.getElementById( "id_2" ).value;
	        window.close();
    	  }
      }
    </script>
</body>
</html>