<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>coc</title>
  
  <style>
		body{
			font-family: 'Nana', sans-serif;
		}

		</style>
	<link href="${path}/resources/css/style.css" rel="stylesheet"/> 	
	<link href="${path}/resources/css/table.css" rel="stylesheet"/> 	
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

      <div id="sheet">
        <div class="sheet_base">
          <table id="info">
            <tr>
              <caption colspan="2">탐사자 정보</caption>
            </tr>
            <tr>
              <td colspan="2">
                <label for="status">이름: </label>
                <input type="text" name="characterName" id="characterName">
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <label for="status">플레이어: </label>
                <input type="text" name="playerName" id="playerName">
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <label for="status">직업: </label>
                <input type="text" name="characterJob" id="characterJob">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">나이: </label>
                <input type="number" id="characterAge" name="characterAge">
              </td>
              <td>
                <label for="status">성별: </label>
                <input type="text" id="characterGender" name="characterGender">
              </td>
            </tr>
          </table>

          <table id="status">
            <tr>
              <caption colspan="3">특성치</caption>
            </tr>
            <tr>
              <td colspan="1">
                <label for="status">근력: </label>
                <input type="number" id="STR" name="STR">
              </td>

              <td colspan="1">
                <label for="status">민첩: </label>
                <input type="number" id="DEX" name="DEX">
              </td>

              <td colspan="1">
                <label for="status">정신: </label>
                <input type="number" id="POW" name="POW">
              </td>
            </tr>

            <tr>
              <td colspan="1">
                <label for="status">건강: </label>
                <input type="number" id="CON" name="CON">
              </td>

              <td colspan="1">
                <label for="status">외모: </label>
                <input type="number" id="APP" name="APP">
              </td>

              <td colspan="1">
                <label for="status">교육: </label>
                <input type="number" id="EDU" name="EDU">
              </td>
            </tr>

            <tr>
              <td colspan="1">
                <label for="status">크기: </label>
                <input type="number" id="SIZ" name="SIZ">
              </td>

              <td colspan="1">
                <label for="status">지능: </label>
                <input type="number" id="INT" name="intelligence">
              </td>

              <td colspan="1">
                <label for="status">행운: </label>
                <input type="number" id="LUK" name="LUK">
              </td>
            </tr>
          </table>

          <table class="condition" id="status_condition">
            <tr>
              <caption colspan="2">특성치별 수준도</caption>
            </tr>
            <tr>
              <td colspan="2">
                <label for="status">생활: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <label for="status">근력: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <label for="status">건강: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">교육: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">민첩: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">지능: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">정신력: </label>
                <input type="number">
              </td>
            </tr>
          </table>
          <input type="button" id="input_finished">
        </div>

        <div class="sheet_base">
          <table id="HP_LUK_MP">
            <tr>
              <td>
                <label for="status" >체력: </label>
                <input type="number" value="0" id="HP">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">이동력: </label>
                <input type="number">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">마력: </label>
                <input type="number" value="0" id="MP">
              </td>
            </tr>
          </table>

          <div id = "body_size">
            <P id="title">COC character</P>

            <table id="body_size_table">
              <tr>
                <td>
                  <label for="status">피해보너스: </label>
                  <input type="number">
                </td>
                <td>
                  <label for="status">체구: </label>
                  <input type="number">
                </td>
              </tr>
            </table>
          </div>
    
          
    
          <table id="mental">
            <tr>
              <td>
                <label for="status">이성: </label>
                <input type="number" id="san" value="0">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">발작: </label>
                <input type="number" >
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">현재 정신 상태: </label>
                <input type="number" >
              </td>
            </tr>
          </table>
    
          <table class="condition" id="mental_condition">
            <tr>
              <caption colspan="2"> 이성 손실 상태</caption>
            </tr>
            <tr>
              <td colspan="2">
                <label for="status">생활: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <label for="status">근력: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <label for="status">건강: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">교육: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">민첩: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">지능: </label>
                <input type="text">
              </td>
            </tr>
            <tr>
              <td>
                <label for="status">정신력: </label>
                <input type="text">
              </td>
            </tr>
          </table>
        </div>
      
        <div id="investigator_function">
          <div id="investigator_function_table1">
            <table id="investigator_function_table">
              <tr>
                <td colspan="9">탐사자 기능</td>
              </tr>
              <tr id="score">
                <td>기능목록</td>
                <td>직업기능 점수</td>
                <td><input type="number" id="occupaionSkillScore" name="occupationScore" value="0"></td>
                <td>관심기능 점수</td>
                <td><input type="number" id="interestSkillScore" name="interestScore" value="0"></td>
                <td>스킬 성장</td>
                <td><input type="number" id="bonusSkillScore" name="bonusScore" value="0"></td>
                <td>남은 점수</td>
                <td><input type="number" id="totalpoints" name="totalScore" value="0"></td>
              </tr>
              <tr>
                <td colspan="3">
                  <table class="function_table" id="appraisal">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">감정</td>
                      <td><input type="number" value="5" class="defult"></td>
                      <td><input type="number" value="0" name="a"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table" id="language">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">언어</td>
                      <td><input type="number" value="50" class="defult"></td>
                      <td><input type="number" value="0" name="b"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">크툴루 신화</td>
                      <td><input type="number" value="0" class="defult"></td>
                      <td><input type="number" value="0" name="c"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>

              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">고고학</td>
                      <td><input type="number" value="1" class="defult"></td>
                      <td><input type="number" value="0" name="d"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">역사</td>
                      <td><input type="number" value="5" class="defult"></td>
                      <td><input type="number" value="0" name="e"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">투척</td>
                      <td><input type="number" value="20" class="defult"></td>
                      <td><input type="number" value="0" name="f"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>


              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">관찰력</td>
                      <td><input type="number" value="25" class="defult"></td>
                      <td><input type="number" value="0" name="g"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">열쇠공</td>
                      <td><input type="number" value="1" class="defult"></td>
                      <td><input type="number" value="0" name="h"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">항법</td>
                      <td><input type="number" value="10" class="defult"></td>
                      <td><input type="number" value="0" name="i"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>


              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">근접전(격투)</td>
                      <td><input type="number" value="25" class="defult"></td>
                      <td><input type="number" value="0" name="j"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">오르기</td>
                      <td><input type="number" value="20" class="defult"></td>
                      <td><input type="number" value="0" name="k"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">회계</td>
                      <td><input type="number" value="5" class="defult"></td>
                      <td><input type="number" value="0" name="l"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>

              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">기계수리</td>
                      <td><input type="number" value="10" class="defult"></td>
                      <td><input type="number" value="0" name="m"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">오컬트</td>
                      <td><input type="number" value="5" class="defult"></td>
                      <td><input type="number" value="0" name="n"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">회피</td>
                      <td><input type="number" value="25" class="defult"></td>
                      <td><input type="number" value="0" name="o"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>

              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">도약</td>
                      <td><input type="number" value="20" class="defult"></td>
                      <td><input type="number" value="0" name="p"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">위협</td>
                      <td><input type="number" value="15" class="defult"></td>
                      <td><input type="number" value="0" name="q"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">외국어</td>
                      <td><input type="number" value="1" class="defult"></td>
                      <td><input type="number" value="0" name="r"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>

              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">듣기</td>
                      <td><input type="number" value="20" class="defult"></td>
                      <td><input type="number" value="0" name="s"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">은밀행동</td>
                      <td><input type="number" value="20" class="defult"></td>
                      <td><input type="number" value="0" name="t"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">과학</td>
                      <td><input type="number" value="10" class="defult"></td>
                      <td><input type="number" value="0" name="u"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>

              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">말재주</td>
                      <td><input type="number" value="5" class="defult"></td>
                      <td><input type="number" value="0" name="v"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">응급처치</td>
                      <td><input type="number" value="30" class="defult"></td>
                      <td><input type="number" value="0" name="w"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">예술/공예()</td>
                      <td><input type="number" value="5" class="defult"></td>
                      <td><input type="number" value="0" name="x"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>

              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">매혹</td>
                      <td><input type="number" value="15" class="defult"></td>
                      <td><input type="number" value="0" name="y"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">의료</td>
                      <td><input type="number" value="1" class="defult"></td>
                      <td><input type="number" value="0" name="z"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">사격()</td>
                      <td><input type="number" value="0" class="defult"></td>
                      <td><input type="number" value="0" name="aa"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>

              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">법률</td>
                      <td><input type="number" value="5" class="defult"></td>
                      <td><input type="number" value="0" name="ab"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">인류학</td>
                      <td><input type="number" value="1" class="defult"></td>
                      <td><input type="number" value="0" name="ac"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">근접전()</td>
                      <td><input type="number" value="0" class="defult"></td>
                      <td><input type="number" value="0" name="ad"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>

              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">변장</td>
                      <td><input type="number" value="5" class="defult"></td>
                      <td><input type="number" value="0" name="ae"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">자동차 운전</td>
                      <td><input type="number" value="20" class="defult"></td>
                      <td><input type="number" value="0" name="af"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">생존술()</td>
                      <td><input type="number" value="10" class="defult"></td>
                      <td><input type="number" value="0" name="ag"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>

              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">사격(권총)</td>
                      <td><input type="number" value="20" class="defult"></td>
                      <td><input type="number" value="0" name="ah"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">자료조사</td>
                      <td><input type="number" value="20" class="defult"></td>
                      <td><input type="number" value="0" name="ai"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">???</td>
                      <td><input type="number" value="0" class="defult"></td>
                      <td><input type="number" value="0" class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>
              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">사격(라/산)</td>
                      <td><input type="number" value="25" class="defult"></td>
                      <td><input type="number" value="0" name="aj"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">자연</td>
                      <td><input type="number" value="10" class="defult"></td>
                      <td><input type="number" value="0" name="ak"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">???</td>
                      <td><input type="number" value="0" class="defult"></td>
                      <td><input type="number" value="0" class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>

              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">설득</td>
                      <td><input type="number" value="10" class="defult"></td>
                      <td><input type="number" value="0" name="al"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">재력</td>
                      <td><input type="number" value="0" class="defult"></td>
                      <td><input type="number" value="0" name="am"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">???</td>
                      <td><input type="number" value="0" class="defult"></td>
                      <td><input type="number" value="0" class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>
              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">손놀림</td>
                      <td><input type="number" value="10" class="defult"></td>
                      <td><input type="number" value="0" name="an"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">전기수리</td>
                      <td><input type="number" value="10" class="defult"></td>
                      <td><input type="number" value="0" name="ao"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">???</td>
                      <td><input type="number" value="0" class="defult"></td>
                      <td><input type="number" value="0" class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>

              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">수영</td>
                      <td><input type="number" value="20" class="defult"></td>
                      <td><input type="number" value="0" name="ap"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">정신분석</td>
                      <td><input type="number" value="10" class="defult"></td>
                      <td><input type="number" value="0" name="aq"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">???</td>
                      <td><input type="number" value="0" class="defult"></td>
                      <td><input type="number" value="0" class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>
              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">승마</td>
                      <td><input type="number" value="5" class="defult"></td>
                      <td><input type="number" value="0" name="ar"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">중장비 조작</td>
                      <td><input type="number" value="1" class="defult"></td>
                      <td><input type="number" value="0" name="aaa"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">???</td>
                      <td><input type="number" value="0" class="defult"></td>
                      <td><input type="number" value="0" class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>
              
              <tr>
                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">심리학</td>
                      <td><input type="number" value="10" class="defult"></td>
                      <td><input type="number" value="0" name="bbb"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">추적</td>
                      <td><input type="number" value="10" class="defult"></td>
                      <td><input type="number" value="0" name="ccc"class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>

                <td colspan="3">
                  <table class="function_table">
                    <tr>
                      <td><input type="checkbox"></td>
                      <td class="function_name">???</td>
                      <td><input type="number" value="0" class="defult"></td>
                      <td><input type="number" value="0" class="input_score"></td>
                      <td><input type="number" value="0" class="normal"></td>
                      <td><input type="number" value="0" class="hard"></td>
                      <td><input type="number" value="0" class="extreme"></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </div>  
          <div id = backstory>  
            <h1>백스토리</h1>
            <div id="appearance">
              <p class="backstory_name">겉보기</p>
              <textarea class="backstory_contents" placeholder="여기에 입력" value={text}></textarea>
              
            </div>
            
            <div id="p">
              <p class="backstory_name">성격</p>
              <textarea class="backstory_contents" placeholder="여기에 입력" value={text}></textarea>
            </div>
            <div id="relationship">
              <p class="backstory_name">관계</p>  
              <textarea class="backstory_contents" placeholder="여기에 입력" value={text}></textarea>
            </div>

            <div id="etc">
              <p class="backstory_name">기타</p>
              <textarea class="backstory_contents" placeholder="여기에 입력" value={text}></textarea>
            </div>

            <div id="belief">
              <p class="backstory_name">신념/사상</p>
              <textarea class="backstory_contents" placeholder="여기에 입력" value={text}></textarea>
            </div>

            <div id="location">
              <p class="backstory_name">장소</p>
              <textarea class="backstory_contents" placeholder="여기에 입력" value={text}></textarea>
            </div>

            <div id="phobia">
              <p class="backstory_name">공포증과<br>집착증</p>
              <textarea class="backstory_contents" placeholder="여기에 입력" value={text}></textarea>
            </div>

            <div id="experience">
              <p class="backstory_name">이상한<br>경험</p>
              <textarea class="backstory_contents" placeholder="여기에 입력" value={text}></textarea>
            </div>

            <div id="spell">
              <p class="backstory_name">신화서 주문 유물</p>
              <textarea class="backstory_contents" placeholder="여기에 입력" value={text}></textarea>
            </div>
          </div>
        </div>

        <div class="sheet_base">
          <div id="battle">
            <h1>전투</h1>
            <table id="weapon_table">
              <tr>
                <td>무기</td>
                <td>기능</td>
                <td>피해</td>
                <td>사거리</td>
                <td>공격횟수</td>
                <td>탄약</td>
                <td>고장</td>
                
              </tr>
              <tr>
                <td>
                  <input type="text" placeholder="맨손" ></input>
                  <input type="number" placeholder="25">
                  <input type="number" placeholder="12">
                  <input type="number" placeholder="5">
                </td>
                <td>
                  <input type="text" placeholder="1d3 + 보너스" ></input>
                </td>
                <td>
                  <input type="text" placeholder="근접전(격투)" ></input>
                </td>
                <td>
                  <input type="text" placeholder="-" ></input>
                </td>
                <td>
                  <input type="text" placeholder="-" ></input>
                </td>
                <td>
                  <input type="text" placeholder="-" ></input>
                </td>
                <td>
                  <input type="checkbox"></input>
                </td>
              </tr>
              <tr>
                <td>
                  <input type="text"></input>
                  <input type="number">
                  <input type="number">
                  <input type="number">
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="checkbox"></input>
                </td>
              </tr>

              <tr>
                <td>
                  <input type="text"></input>
                  <input type="number">
                  <input type="number">
                  <input type="number">
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="checkbox"></input>
                </td>
              </tr>
              <tr>
                <td>
                  <input type="text"></input>
                  <input type="number">
                  <input type="number">
                  <input type="number">
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="text"></input>
                </td>
                <td>
                  <input type="checkbox"></input>
                </td>
              </tr>
            </table>
          </div>
          
          <div id="inventory">
            <div>
              <h1>장비</h1>
              <textarea placeholder="여기에 입력" value={text}></textarea>
            </div>
            
            <div>
              <h1>소지품</h1>
              <textarea placeholder="여기에 입력" value={text}></textarea>
            </div>
          </div>


        </div>

        <input type="button" id="input_complete">

      </div>
        


    </div>
    <div id="footer">
    			<p id="copyright">
				Copyright 2023 생임  All rights reserved.
			</p>
    </div>
	</div>
	
	<script src="${path}/resources/js/app.js"></script>

</body>
</html>