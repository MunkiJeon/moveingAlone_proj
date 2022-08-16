<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<link rel="stylesheet" href="<c:url value='/resource'/>/css/manager/staffmanagement.css">
<div class="managerWrap">
	<h2>${title } 관리</h2>
    <table  border="" width="100%">
        <tr>
            <td colspan="5" align="center">
                <div id="SearchBox">
                    이름: <input type="text" id="search_title" name="search_name" placeholder="${title }명">
                    아이디: <input type="text"  id="search_id" name="search_id" placeholder="아이디">
                    입사일:<input type="date" id="search_date" name="search_date" placeholder="입사일">
                    <button id="searchBtn">검색</button>    
                </div>
                <button id="addBtn popupbtn">추가</button>
                <button id="editBtn">수정</button>
                <button id="deleteBtn">삭제</button>
            </td>
        </tr>
        <tr align="center">
            <td><input type="checkbox" id="allCheck"></td>
            <td>이름</td>
            <td>아이디</td>
            <td>입사일</td>
            <td>실적보기</td>
        </tr>
<c:forEach items="${mainData }" var="dto" varStatus="no">
<%-- 	<c:if test="${dto.leval }"></c:if> --%>
        <tr align="center"> <!-- 모양  -->
            <td><input type="checkbox" id="allCheck${no.index }" class="dataChk" value="${dto.id }"></td>
            <td>${dto.name }</td>
            <td>${dto.id }</td>
            <td>${dto.join_date }</td>
            <td><a href="">보기</a></td>
        </tr>
</c:forEach>        
    </table>
</div>

<div class="stepsign">
    <form>
	    <table>
	        <tr>
	            <td>아이디</td>
	            <td><input type="text"/></td>
	        </tr>
	        <tr>
	            <td>비번</td>
	            <td><input type="text"/></td>
	        </tr>
	        <tr>
	            <td>전화번호</td>
	            <td><input type="text"/></td>
	        </tr>
	        <tr>
	            <td>주민등록번호</td>
	            <td><input type="text"/></td>
	        </tr>
	        <tr>
	            <td>증명사진</td>
	            <td><input type="file"/></td>
	        </tr>
	        <tr>
	            <td>운전면허사진</td>
	            <td><input type="file"/></td>
	        </tr>
	        <tr>
	            <td colspan="2"><button type="submit">등록</button></td>
	        </tr>
	    </table>
    </form>
</div>

<div class="popupbg"></div>
<script>
	$(function(){
		let level = "${level}";
		$(function(){
            $(".popupbtn").click(function(e){
                e.preventDefault();
                $(".popupbg").fadeIn(500);
                $(".stepsign").stop().animate({bottom:"50%"},500)
                
                
                $.ajax({
	            	
	            	url:"<c:url value='/ajax/AddModify'/>",
	            	type:'POST',
	    			data:{level:$("#start").val(),end:$("#end").val()},
	    			async:false,
	    			dataType:'json',
	    			success:function(data){
	    				
	    			},
	    			error:function(e){console.log(e)}
            	})
                
                
            })
            $(".popupbg").click(function(){
                $(this).fadeOut(500);
                $(".stepsign").stop().animate({bottom:"-100vh"},500)
                

            })
        })
	})
</script>