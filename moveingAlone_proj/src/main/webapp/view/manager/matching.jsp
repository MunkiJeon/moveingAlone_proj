<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value='/resource'/>/css/manager/matching.css">
<div class="managerWrap">
	<table border="" width="100%">
		<tr>
			<td colspan="15" align="center">

				<div id="SearchBox">
					이름: <input type="text" id="search_title" name="search_name"
						placeholder="고객 혹은 기사"> 아이디: <input type="text"
						id="search_id" name="search_id" placeholder="고객 혹은 기사">
					이사날짜: <input type="date" id="search_date" name="search_date"
						placeholder="입사일">
				</div>
				<button id="searchBtn">검색</button>
				<button id="addBtn">추가</button>
				<button id="editBtn">수정</button>
				<button id="deleteBtn">삭제</button>
			</td>
		</tr>
		<tr>
			<td colspan="15" align="center" style="font-size: 30px;"
				bgcolor="lime">현재 매칭중</td>
		</tr>
		<tr align="center">
			<td><input type="checkbox" id="allCheck"></td>
			<td>고객이름</td>
			<td>고객아이디</td>
			<td>고객전화번호</td>
			<td>기사이름</td>
			<td>기사아이디</td>
			<td>기사전화번호</td>
			<td>이사 날짜</td>
			<td>짐목록</td>
			<td>요구사항</td>
			<td>상태</td>
		</tr>
		<tr align="center">
			<!-- 모양  -->
			<td><input type="checkbox" id="allCheck"></td>
			<td>홍길동</td>
			<td>hong</td>
			<td>2020-01-01</td>
			<td><a href="관리자_직원관리_실적보기.html">보기</a></td>
		</tr>
		<tr>
			<td colspan="15" align="center" style="font-size: 30px;"
				bgcolor="blue">현재 매칭중</td>
		</tr>
		<tr align="center">
			<td><input type="checkbox" id="allCheck"></td>
			<td>고객이름</td>
			<td>고객아이디</td>
			<td>고객전화번호</td>
			<td>기사이름</td>
			<td>기사아이디</td>
			<td>기사전화번호</td>
			<td>이사 날짜</td>
			<td>짐목록</td>
			<td>요구사항</td>
			<td>상태</td>
		</tr>
		<tr align="center">
			<!-- 모양  -->
			<td><input type="checkbox" id="allCheck"></td>
			<td>홍길동</td>
			<td>hong</td>
			<td>2020-01-01</td>
			<td><a href="관리자_직원관리_실적보기.html">보기</a></td>
	</table>
</div>