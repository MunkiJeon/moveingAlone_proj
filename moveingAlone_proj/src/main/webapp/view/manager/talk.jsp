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
    </div>
</div>
