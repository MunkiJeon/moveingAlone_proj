<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/resource/css/manager/top.css'/>">
<script type="text/javascript" src="<c:url value='/resource/js/jquery-3.6.0.js'/>"></script>
<script src="<c:url value='/resource/js/bootstrap.bundle.min.js'/>"></script>
<ul class="header">
    <li class="item">
        <h1 class="logo">나홀로 이사</h1>
    </li>
</ul>
<div class="sideWrap">
    <div class="accordion" id="boxs">
        <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#box1">직원 관리</button></h2>
            <div id="box1" class="accordion-collapse collapse" data-bs-parent="#boxs">
                <div class="accordion-body">
                    <a class="accordionList" href="StaffManagement">직원 조회</a>
                    <a class="accordionList" href="StaffManagement">직원 추가</a>
                    <a class="accordionList" href="StaffManagement">직원 수정</a>
                    <a class="accordionList" href="StaffManagement">직원 삭제</a>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#box2">매칭 관리</button></h2>
            <div id="box2" class="accordion-collapse collapse" data-bs-parent="#boxs">
                <div class="accordion-body">
                    <a class="accordionList" href="Matching">매칭 현황 조회</a>
                    <a class="accordionList" href="Matching">매칭 현황 추가</a>
                    <a class="accordionList" href="Matching">매칭 현황 수정</a>
                    <a class="accordionList" href="Matching">매칭 현황 삭제</a>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#box3">견적 관리</button></h2>
            <div id="box3" class="accordion-collapse collapse" data-bs-parent="#boxs">
                <div class="accordion-body">
                    <a class="accordionList" href="Matching">견적 조회</a>
                    <a class="accordionList" href="Matching">견적 항목 추가</a>
                    <a class="accordionList" href="Matching">견적 항목 수정</a>
                    <a class="accordionList" href="Matching">견적 항목 삭제</a>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#box4">정산 관리</button></h2>
            <div id="box4" class="accordion-collapse collapse" data-bs-parent="#boxs">
                <div class="accordion-body">
                    <a class="accordionList" href="Calculate">정산 조회</a>
                    <a class="accordionList" href="Calculate">매출 조회</a>
                    <a class="accordionList" href="Calculate">매입 조회</a>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button" data-bs-toggle="collapse" data-bs-target="#box5">상담 관리</button></h2>
            <div id="box5" class="accordion-collapse collapse" data-bs-parent="#boxs">
                <div class="accordion-body">
                    <a class="accordionList" href="Talk">문의 조회</a>
                    <a class="accordionList" href="Talk">문의 추가</a>
                    <a class="accordionList" href="Talk">문의 수정</a>
                    <a class="accordionList" href="Talk">문의 삭제</a>
                </div>
            </div>
        </div>
    </div>
</div>