<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<c:url value='/resource/css/guest/top.css'/>">
 <header>
     <nav>
         <h1 class="logo"><a href="<c:url value="/guest/GuestMain"/>">나홀로 이사</a></h1>
         <ul class="list">
         	<li><a href="<c:url value="/guest/CostCalc"/>">비용계산기</a></li>
         </ul>
         <ul class="login">
             <li><a>로그인</a></li>
             <li><a>회원가입</a></li>
         </ul>
     </nav>
 </header>
 