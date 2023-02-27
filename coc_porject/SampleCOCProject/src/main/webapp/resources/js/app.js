const player = {
  characterName : document.getElementById("characterName").value,
  playerName:document.getElementById("playerName").value,
  characterJob:document.getElementById("characterJob").value,
  characterAge:document.getElementById("characterAge").value,
  characterAge:document.getElementById("characterAge").value,
  characterGender:document.getElementById("characterGender").value,

  STR:document.getElementById("STR").value,
  DEX:document.getElementById("DEX").value,
  POW:document.getElementById("POW").value,
  CON:document.getElementById("CON").value,
  APP:document.getElementById("APP").value,
  EDU:document.getElementById("EDU").value,
  SIZ:document.getElementById("SIZ").value,
  INT:document.getElementById("INT").value,
  LUK:document.getElementById("LUK").value,


  //character:document.getElementById("character").value,

}

document.getElementById("input_finished").addEventListener("click",inputCompleted);
 
function inputCompleted() {
  player.characterName = document.getElementById("characterName").value;
  player.playerName=document.getElementById("playerName").value;
  player.characterJob=document.getElementById("characterJob").value;
  player.characterAge=document.getElementById("characterAge").value;
  player.characterAge=document.getElementById("characterAge").value;
  player.characterGender=document.getElementById("characterGender").value;
  player.STR=document.getElementById("STR").value;
  player.DEX=document.getElementById("DEX").value;
  player.POW=document.getElementById("POW").value;
  player.CON=document.getElementById("CON").value;
  player.APP=document.getElementById("APP").value;
  player.EDU=document.getElementById("EDU").value;
  player.SIZ=document.getElementById("SIZ").value;
  player.INT=document.getElementById("INT").value;
  player.LUK=document.getElementById("LUK").value;
  console.log(player);

  player.HP = Math.floor((parseInt(player.CON)+parseInt(player.SIZ))/10);
  player.Sane = player.POW;
  player.MP = Math.floor(parseInt(player.POW)/5);
  player.occupaionSkillScore = parseInt(player.EDU)*4;
  player.interestSkillScore = parseInt(player.INT)*2;
  player.totalpoints=player.interestSkillScore+player.occupaionSkillScore
  printScores();

  console.log(player);

}

//최종점수저장하는곳


//HP, MP, 스킬점수 업데이트하는곳
function printScores()
{
  document.getElementById("HP").value=player.HP;
  document.getElementById("MP").value=player.MP;
  document.getElementById("san").value=player.Sane;
  document.getElementById("occupaionSkillScore").value=player.occupaionSkillScore;
  document.getElementById("interestSkillScore").value=player.interestSkillScore;
  document.getElementById("totalpoints").value=player.totalpoints
}

//점수 토탈해서 보너스점수 들어올떄마다 업데이트
document.getElementById("bonusSkillScore").addEventListener("change", function(){player.totalpoints = parseInt(document.getElementById("bonusSkillScore").value) + player.interestSkillScore + player.occupaionSkillScore
document.getElementById("totalpoints").value=player.totalpoints;
});

// functions 배열 만들어서 반복으로 하나씩 이벤트 핸들러 넣어줄거임
const playerFunctions = document.querySelectorAll(".function_table");

// function 하나씩 접근해서 이벤트 핸들러 만들고 점수 감소까지 업데이트
for(const playerFunction of playerFunctions){
  playerFunction.querySelector(".defult").readOnly=true;
  playerFunction.querySelector(".normal").readOnly=true;
  playerFunction.querySelector(".hard").readOnly=true;
  playerFunction.querySelector(".extreme").readOnly=true;

  playerFunction.querySelector(".normal").value = parseInt(playerFunction.querySelector(".input_score").value) + parseInt(playerFunction.querySelector(".defult").value);
  playerFunction.querySelector(".hard").value = Math.floor(parseInt(playerFunction.querySelector(".normal").value)/2);
  playerFunction.querySelector(".extreme").value = Math.floor(parseInt(playerFunction.querySelector(".normal").value)/5);

  playerFunction.querySelector(".input_score").addEventListener("change", function(){
    playerFunction.querySelector(".normal").value = parseInt(playerFunction.querySelector(".input_score").value) + parseInt(playerFunction.querySelector(".defult").value);
    playerFunction.querySelector(".hard").value = Math.floor(parseInt(playerFunction.querySelector(".normal").value)/2);
    playerFunction.querySelector(".extreme").value = Math.floor(parseInt(playerFunction.querySelector(".normal").value)/5);
    
    let tempScore = player.totalpoints; 
    for(const playerFunction of playerFunctions){
      tempScore-=playerFunction.querySelector(".input_score").value;
      console.log(playerFunction.querySelector(".input_score").value);
      console.log(tempScore);
    }
    document.getElementById("totalpoints").value = tempScore;
  })
}


  document.getElementById("input_complete").addEventListener("click", printCommandString);


  // 입력 함수
  function printCommandString(){
    let main_status = "$('input[name=attr_strength]').attr('value',"+player.STR+");" +
    "$('input[name=attr_dexterity]').attr('value',"+player.DEX+");"+
    "$('input[name=attr_intelligence]').attr('value',"+player.INT+");" +
    "$('input[name=attr_constitution]').attr('value',"+player.CON+");" +
    "$('input[name=attr_appearance]').attr('value',"+player.APP+");" +
    "$('input[name=attr_power]').attr('value',"+player.POW+");" +
    "$('input[name=attr_size]').attr('value',"+player.SIZ+");" +
    "$('input[name=attr_education]').attr('value',"+player.EDU+");"+
    "$('input[name=attr_luck]').attr('value',"+player.LUK+");";

    let function_name =["attr_appraise", "attr_own", "attr_cthulhu_mythos", "attr_archaeology", "attr_history", "attr_throw", "attr_spot_hidden", "attr_locksmith", "attr_navigate", "attr_brawl", "attr_climb", "attr_accounting", "attr_mechanical_repair", "attr_occult", "attr_dodge", "attr_jump", "attr_intimidate", "attr_listen", "attr_stealth", "attr_fast_talk", "attr_first_aid", "attr_charm", "attr_medicine", "attr_law", "attr_anthropology", "attr_disguise", "attr_drive_auto","attr_handgun", "attr_library_use", "attr_rifle_shotgun", "attr_natural_world", "attr_persuade", "attr_credit_rating", "attr_sleight_of_hand", "attr_electrical_repair", "attr_swim", "attr_psychoanalysis", "attr_ride", "attr_operate_heavy_machinery", "attr_psychology", "attr_track"]

    let function_name_in_cc=["감정","언어", "크툴루 신화", "고고학","역사", "투척", "관찰력", "열쇠공", "항법", "근접전(격투)", "오르기", "회계", "기계수리", "오컬트", "회피", "도약", "위협", "듣기", "은밀행동", "말재주", "응급처치",  "매혹", "의료",  "법률", "인류학",  "변장", "자동차 운전", "사격(권총)", "자료조사", "사격(라/산)", "자연", "설득", "재력", "손놀림", "전기수리", "수영", "정신분석", "승마", "중장비 조작", "심리학", "추적" ]


    let commandString = "console.log(\"입력완료\");";

    for(let i = 0; i < 15; i++){
      commandString += "$('input[name="+ function_name[i] +"]').attr('value'," + playerFunctions[i].querySelector(".normal").value + ");"
    }
    let cnt = 15;
    for(let i = 15; i < playerFunctions.length; i++){
      if(i%3===2){
        continue;
      }
      commandString += "$('input[name="+ function_name[cnt] +"]').attr('value'," + playerFunctions[i].querySelector(".normal").value + ");"
      cnt++;


    }
/*
 { "kind": "character", "data": { "name": "이름 없는 탐사자", "status":[{"label":"HP","value":0,"max":0},{"label":"MP","value":0,"max":0},{"label":"SAN","value":1,"max":1},{"label":"행운","value":1,"max":1}],"params":[{"label":"DB","value":"1"}],"commands": "cc<={SAN} 이성체크\n cc<={행운} 행운\ncc<=1 근력\ncc<=1 건강\ncc<=1 크기\ncc<=1 민첩\ncc<=1 외모\ncc<=1 교육 (지식)\ncc<=1 지능 (아이디어)\ncc<=1 정신력\n1d3+{DB} 피해(맨손)\ncc<=ctrl+shift+V 여기에 복붙\ncc<=1 입력\n cc<=2 예시"} }
 */

    let commandString_in_cc = "{ \"kind\": \"character\", \"data\": { \"name\": \"이름 없는 탐사자\", \"status\":[{\"label\":\"HP\",\"value\":"+document.getElementById("HP").value+",\"max\":"+document.getElementById("HP").value+"},{\"label\":\"MP\",\"value\":"+document.getElementById("MP").value+",\"max\":"+document.getElementById("MP").value+"},{\"label\":\"SAN\",\"value\":"+document.getElementById("san").value+",\"max\":"+document.getElementById("san").value+"},{\"label\":\"행운\",\"value\":"+player.LUK+"+,\"max\":"+player.LUK+"}],\"params\":[{\"label\":\"DB\",\"value\":\"1\"}],\"commands\": \"cc<={SAN} 이성체크\ncc<={행운} 행운\n  cc<="+player.STR+" 근력\ncc<="+player.CON+" 건강\ncc<="+player.SIZ+" 크기\ncc<="+player.DEX+" 민첩\ncc<="+player.APP+" 외모\ncc<="+player.EDU+" 교육 (지식)\ncc<="+player.INT+" 지능 (아이디어)\ncc<="+player.POW+" 정신력\n1d3+{DB} 피해(맨손)\n";

    for(let i = 0; i < 15; i++){
      commandString_in_cc += "cc<="+ playerFunctions[i].querySelector(".normal").value+ " " + function_name_in_cc[i]+"\n";
    }
    let cnt1 = 15;
    for(let i = 15; i < playerFunctions.length; i++){
      if(i%3===2){
        continue;
      }
      commandString_in_cc += "cc<="+ playerFunctions[i].querySelector(".normal").value+ " " + function_name_in_cc[cnt1]+"\n";
      cnt1++;


    }

    commandString_in_cc +="\"} }";
  
  

//모국어판정은 언어로 대체 
//외국어 과학 예술/공예 사격() 근접전()없음

    //"$('input[name=appraise]').attr('value'," +  playerFunctions[0].querySelector(".normal").value + ");"+

    

    console.log(main_status);
    console.log(commandString);
    console.log(commandString_in_cc);

  }


 







/* document.getElementById("characterName").addEventListener("change", function(){player.characterName = document.getElementById("characterName").value;});
*/




/* document.getElementById("id").addEventListener("change", function(){player.porperty = document.getElementById("id").value;});
 */



