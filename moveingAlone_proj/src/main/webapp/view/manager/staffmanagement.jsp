<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<c:url value='/resource'/>/css/manager/staffmanagement.css">
<div class="managerWrap">
    <table  border="" width="100%">
        <tr>
            <td colspan="5" align="center">
                <div id="SearchBox">
                    이름: <input type="text" id="search_title" name="search_name" placeholder="기사명">
                    아이디: <input type="text"  id="search_id" name="search_id" placeholder="아이디">
                    입사일:<input type="date" id="search_date" name="search_date" placeholder="입사일">
                    <button id="searchBtn">검색</button>    
                </div>
                <button id="addBtn">추가</button>
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
        <tr align="center"> <!-- 모양  -->
            <td><input type="checkbox" id="allCheck"></td>
            <td>홍길동</td>
            <td>hong</td>
            <td>2020-01-01</td>
            <td><a href="관리자_직원관리_실적보기.html">보기</a></td>
        </tr>
    </table>
</div>