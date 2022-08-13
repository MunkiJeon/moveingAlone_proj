<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<c:url value='/resource/css/guest/calc.css'/>">
<link rel="stylesheet" href="<c:url value='/resource/css/diary.css'/>">
    <section class="detail">
        <!-- 날짜선택
        시간선택
        출발 도착
        서비스 종류(이사종류) -->
        <section class="calc">
            <form action="Estimate?num=2" method="post">
            
            <div class="calcList">
                    <ul class="calcItem">
                    	<li>
                    		<h3>출/도착지를 입력해 주세요.</h3>
							<div class="diary">
						    	<div class="wrapper"></div>
						    </div>
                    	</li>
                        <li class="address">
                            <h3>출/도착지를 입력해 주세요.</h3>
                            <input type="text" placeholder="여기를 눌러서 출발지 주소 검색">
                            <input type="text" placeholder="여기를 눌러서 도착지 주소 검색">
                        </li>
                        <li class="time">
                            <h3>픽업시간을 선택해 주세요.</h3>
                            <div class="timeWrap">
                                <input type="radio" id="time1" name="time">
                                <label for="time1">
                                    08:00 ~ 17:30 주간
                                </label>
                                <input type="radio" id="time2" name="time">
                                <label for="time2">
                                    18:00 ~ 07:30 야간
                                </label>
                            </div>
                        </li>
                        
                        <li class="option">
                            <h3>운송옵션을 알려주세요.</h3>
                            <label for="option1">
                                <input type="radio" id="option1" name="option">
                                일반이사
                            </label>
                            <label for="option2">
                                <input type="radio" id="option2" name="option">
                                포장이사
                            </label>
                            <button type="submit" class="detailNext">
                            	다음
                            </button>
                        </li>
                    </ul>
                </div>
            </form>
            
        </section>
    </section>
  <script>
$(function(){
   let num;
const now = new Date();
let realMonth = now.getMonth();
let realDay = now.getDate();
diaryAjax(num);
function diaryAjax(num){
	$.ajax({
		url:'<c:url value="/ajax/Diary"/>',
		type:'GET',
		data:{month:num,realMonth:realMonth,realDay:realDay},
		async:false,
		dataType:'json',	//지정하지 않으면 문자열로 처리
		success:function(dd){
			$(".wrapper").show();
			$(".wrapper").find("div").remove();
			$(".wrapper").find(".flex-wrap").remove();
			$(".wrapper").append("<div class='flex-wrap'>");
			$(".wrapper").find(".flex-wrap").append("<button class='pre'>&lt;</button>");
			$(".wrapper").find(".flex-wrap").append("<h2 class='month'>"+dd.title+"월</h2>");
			$(".wrapper").find(".flex-wrap").append("<button class='next'>&gt;</button>");
			$(".wrapper").append(dd.diary);
			if(dd.title<=realMonth+1) $(".pre").attr("disabled", true);
			if(dd.title>=12) $(".next").attr("disabled", true);
	
			
			$(".pre").click(function(){
				num = $(".month").html().split("월")[0]*1-1;
				diaryAjax(num);
			})
			$(".next").click(function(){
				num = $(".month").html().split("월")[0]*1+1;
				diaryAjax(num);
			})
			$(".chk").click(function(){
				if($(".month").html().split("월")[0]*1-1<=realMonth && $(this).html().trim()*1<=realDay) return;
				$(".chk").css({background:"transparent"});
				$(this).css({background:"red"});
				$(".chk").removeClass("dayChk");
				$(this).addClass("dayChk");
			})
			
		},
		error:function(e){
			console.log(e.responseText);
		}
	})
	}
})
</script>