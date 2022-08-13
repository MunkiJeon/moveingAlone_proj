<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<c:url value='/resource'/>/css/calculate/talk.css">
<div class="managerWrap">
    <div class="inquire">
        <form>
            <h3>조회하기</h3>
            <ul class="chk">
                <li class="chkItem">
                    정산 예정일
                </li>
                <li class="chkItem">
                    <input type="date">
                </li>
                <li class="chkItem">
                    <input type="date">
                </li>    
            </ul>
            <div class="btnBox">
                <button type="submit">검색</button>
                <button type="reset">초기화</button>
            </div>
        </form>
    </div>
    <div class="result">
        <h3>정산 내역</h3>
        <table>
            <tr>
                <td>결제금액</td>
                <td>결제금액</td>
                <td>결제금액</td>
                <td>결제금액</td>
                <td>결제금액</td>
            </tr>
            <tr>
            	<td colspan="5">데이터가 존재하지 않음</td>
        	</tr>
        </table>
        <div class="resultMoney">
            <p>정산 금액</p>
            <p> 원</p>
            
        </div>
    </div>
</div>