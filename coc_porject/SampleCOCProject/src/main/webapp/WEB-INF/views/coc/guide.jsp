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
	<link href="${path}/resources/css/guide.css" rel="stylesheet"/> 
	<style>
		body{
			font-family: 'Nana';
		}
		</style>

</head>

<body>

	<div id="container">
		<div id="header">
			<a href="/index">COC 캐릭터 시트</a>
			<a href="/index">팀구성</a>
			<a href="/guestSheet">시트작성</a>
      <a href="/guide">가이드</a>
      <a href="/updateLog">업데이트</a>
      <div class="blank"></div>
      <a href="/login" class="login"> 로그인</a>
		</div>

		<div id="main">
      <div class = "guide_line">
        <h1>
          페이지 이름?
        </h1>
        <p>
          이 페이지는 <mark>팀 구성</mark>과 <mark>시트 작성</mark>, <mark>CCFORIA</mark>와 <mark>ROLL20</mark>의 
          캐릭터 생성을 편하게 하기 위한 페이지 입니다.
        </p>
      </div>

      <div class = "guide_line">
        <h1>
        	 팀 구성 사용법
        </h1>
        <p>
			회원가입 이후 로그인을 합니다.
        </p>
        
        <img src="${path}/resources/picture/team.png" alt="팀" id="sheet_picture" class="teamimg">
        <p>
        	  로그인 후 아래와 같은 화면으로 이동합니다. 팀번호가 0 인 곳이 있는지 확인 하고 생성버튼을 누릅니다.
        	
        </p>
        
        <img src="${path}/resources/picture/list.png" alt="리스트" id="sheet_picture" class="teamimg">
        <p>
        	마스터의 경우 위쪽의 시트목록 번호를 팀원들에게 알려주시면 됩니다. (위의 경우는 33번 입니다.)<br/>
        	  생성 버튼을 누르면 아래와 같은 화면으로 이동합니다. 이후 시트번호가 0인 곳이 있는지 확인 후 생성 버튼을 누릅니다.
        </p>
        
        <img src="${path}/resources/picture/sheet.png" alt="시트" id="sheet_picture">
        <p>
			시트 페이지로 이동하여 시트를 작성하면 됩니다.
        </p>
        
      </div>
      
      
      <div class = "guide_line">
        <h1>
          	팀 참여 방법
        </h1>
                <img src="${path}/resources/picture/add_team1.png" alt="시트" id="sheet_picture"class="teamimg">
	        <p>
				아래의 삭제할 팀번호와 추가할 팀 번호를 입력하고 추가 버튼을 누릅니다.<br/>
				삭제할 팀이 없을 경우 삭제할 팀 번호에 0을 입력합니다.<br/>
				
	        </p>
	        <img src="${path}/resources/picture/add_team2.png" alt="시트" id="sheet_picture" class="teamimg">
	        <p>
					팀이 추가된것을 확인 후 사용하시면 됩니다.<br/>

				
	        </p>
      	</div>
      

      <div class = "guide_line">
        <h1>
          	시트 사용법
        </h1>
                
        <img src="${path}/resources/picture/inputted_sheet1.png" alt="시트" id="sheet_picture">
        <p>
          	첫 블록의 탐사자와 특성치 정보를 입력한 후 우측의 입력완료 버튼을 누릅니다.
        </p>
        
        <img src="${path}/resources/picture/inputted_sheet2.png" alt="시트" id="sheet_picture">
        <p>
			스킬 성장 포인트가 있으면 추가입력 후 시트를 작성합니다.
        </p>
        
        <img src="${path}/resources/picture/inputted_sheet3.png" alt="시트" id="sheet_picture">
        <p>
			우측 하단의 입력 완료와 저장 버튼을 누르면 시트가 저장됩니다. (입력 중 뒤로가기나 창을 닫으시면 저장이 되지 않아요!)
        </p>
      </div>
      
      <div class="guide_line">
	      <h1>
	      	Roll20 콘솔 사용법
	      </h1>
	      <p>
		      <a href="https://docs.google.com/document/d/15TVl00K5zh07ardXayNDunXDsmrRhW6nr0GtK2EBX44/edit?usp=sharing" target="_blank" class="doc">roll 20 콘솔 사용 설명서</a>
	      </p>
      </div>

      
        <div class = "guide_line">
        <h1>
			주의 사항!
        </h1>
        <p>
			팀과 시트를 민들 경우 꼭 0번팀과 0번시트가 있는지 확인하고 생성버튼으로 생성해주세요!
        </p>
        <p>
          	이전에 제작한 시트를 수정하고 싶으신경우 (23번 시트를 수정하려고 시트목록에서  coc 시트: 23에 접근한 경우)<br/>
          	우측의 입력완료 버튼을 누르고 스킬성장 점수를 올렸다 내린 후 크툴루 신화 스텟을  한번 올렸다 내려주세요.<br/>
          	하지않으면 남은 점수가 없어지는 버그가 있습니다...
        </p>

        <p>
			시트를 작성한 후에는 꼭 저장버튼을 눌러주세요!
        </p>
      </div>
      
		
</div>
		<div id="footer">
			<p id="copyright">
				Copyright 2023 생임  All rights reserved.
			</p>
		</div>
  </div>


</body>
</html>