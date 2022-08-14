<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<c:url value='/resource/css/manager/talk.css'/>">
<div class="managerWrap">
    <div class="talk">
        <div class="list">
            <button>고객</button>
            <button>직원</button>
        </div>
        <ul class="state">
            <li class="stateItem">
                대기 
            </li>
            <li class="stateItem">
                보류
            </li>
            <li class="stateItem">
                완료 
            </li>
        </ul>
        <div class="line"></div>
        <div class="talkWrap">
        </div>
    </div>
</div>
<script>
$(function(){
let index = 1;
talkAjax(index);
function talkAjax(index){
	$.ajax({
		url:'<c:url value="/ajax/InquiryList"/>',
		type:'GET',
		data:{idnex:index},
		async:false,
		dataType:'json',	//지정하지 않으면 문자열로 처리
		success:function(data){
			console.log(data)
			let str = "<ul class='userlist'>"
			for(let i = 0; i<data.length;i++){
				
				let user = data[i].split(":");
				str+= "<li class='item'><p>"+decodeURIComponent(user[0])+"</p><p>"
				for (let j = 1; j < user.length; j++) {
					str += decodeURIComponent(user[j]) ;
					
				}
				str+="</p></li>"
			}
			str+="</ul>";
			$(".talk .talkWrap").html(str);
		},
		error:function(e){
			console.log(e.responseText);
		}
	})
	}
})
</script>