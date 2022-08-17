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
        <div class="line"></div>
        <table class="talkWrap">
        
        	<tr>
        		<td>고객 아이디</td>
        		<td>문의</td>
        		<td>답변</td>
        		<td>상태</td>
        	</tr>
        </table>
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
			let str = ""
			for(let i = 0; i<data.length;i++){
				
				let user = data[i].split(":");
				str+= "<tr class='item'><td>"+decodeURIComponent(user[0])+"</td><td>"
				for (let j = 1; j < user.length; j++) {
					str += decodeURIComponent(user[j]) ;
					
				}
				str+="</td><td><button class=''>답변</button></td><td>aa</td></tr>"
			}
			$(".talk .talkWrap").html(str);
		},
		error:function(e){
			console.log(e.responseText);
		}
	})
	}
})
</script>