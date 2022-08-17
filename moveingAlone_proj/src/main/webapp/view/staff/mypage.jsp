<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String uRl = "employee/employeeMat.jsp";
%>
<style>
*{
	margin:0px;
	padding:0px;
 }
 
 .toggle-switch input{
 	-webkit-appearance:none;
 	-webkit-border-redius:0;
 }
 
 #container{
 	display: flex;
 	
 }
 
 .menuI{
 	left:0px;
 	
 	width:100px;
 	height:100%;
 	background:#40699A;
 	position:fixed;
 	z-index: 1;
 	border: 1px solid black;
 	
 }
 .box{
 	left:0px;
 	top:110px;
 	width:100px;
 	height: 300px;
 	background:#40699A;
 	position:fixed;
 	z-index: 2;
 }
 .menuI2{
 	width: 95px;
 	height: 90px;
 	display:inline-block;
 	margin-top: 5px;
 	cursor:pointer;
 }
 
.in{
	display: none;
}
 .header{
 	
 	width:93%;
 	
 	border-bottom: 1px solid black;
 	margin-left: 100px;
 }
 .tableM{
 	/* border:1px solid black; */
 	margin-left:100px;
 	width:93%;
 	
 	
 	}
 hr{
	margin-top: 25px;
	margin-bottom: 25px; 
	width: 100%;
 }
 .mar{
 	 margin-left: 140px;
 	
 	height:80px;
 }
 .mar2{
 	margin-left: 100px
 }
 
 
</style>
<script type="text/javascript" src="../ggg/jquery-3.6.0.js"></script>
<script src="<c:url value="/ggg/"/>jquery-ui.min.js"></script>
<script type="text/javascript">
$(function () {
	let index = 0;
	$(".tableM .section").hide();
	$(".tableM .section").eq(index).show();
	$(".menuI2").click(function() {
		index = $(this).index()
		/* $.ajax({
			url:"<c:url value='/ajax/Love'/>",
			type:"POST",
			data:{index:index},
			async:false,
			dataType:'json',
			success:function(data){
				console.log(data)
				
			},
			error:function(str){
				
			}
		})*/
		$(".tableM .section").hide();
		$(".tableM .section").eq(index).show();l
	})

	$(".menuI>.box>label").each(function () {
		$(this).css({background:"url('../ff/gg"+($(this).index()+1)+".png')",
			backgroundColor:"#40699A",
			"background-size":"100px 100px",
			"background-repeat":"no-repeat",
			"background-position":"center",
			"color":"white"})
	})
})
</script>

<!-- <input type="checkbox" id="w1" class="in">
<input type="checkbox" id="w2" class="in">
<input type="checkbox" id="w3" class="in"> -->


<div class="menuI">
	<div class="box">
		
	
		<label class="menuI2" id ="w1">내 정보</label>
		<label class="menuI2" id ="w2">매칭정보</label>
		<label class="menuI2" id ="w3">매출</label>
	</div>
</div>

<div class="mar"><jsp:include page="../inc/staff/top.jsp"/></div>

<table class="tableM">

<tr>
<td></td></tr>
	<tr>
		<td>
			
			<table class="section">
				<tr>
					<td>
						<h2>내정보</h2>
					</td>
				</tr>
				
				<tr>
					<td>
						<table>
								<tr>
									<td align="center">아이디</td>
								</tr>
								<tr>
									<td align="center"><input class="sss" type="text" name="pid" disabled value="${dtoS.id}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td align="center">비밀번호</td>
								</tr>
								<tr>
									<td align="center"><input type="password" name="pw" disabled value="${dtoS.pw}"/></td>
								</tr>
								<tr>
									<td align="center">이름</td>
								</tr>
								<tr>
									<td align="center"><input type="text" name="pname" disabled value="${dtoS.name}" readonly="readonly"/></td>
								</tr>
								<tr>
									<td align="center">전화번호</td>
								</tr>
								<tr>
									<td align="center"><input type="text" name="number" disabled value="${dtoS.tel}"/></td>
								</tr>
								<tr>
									<td align="center">이메일</td>
								</tr>
								<tr>
									<td align="center"><input type="text" name="mail" disabled value="${dtoS.email}" /></td>
								</tr>
								<tr>
									<td></td>
								</tr>
							</table>
					</td>
				</tr>
			</table>
			<table class="section">
				<tr>
					<td><h2>매칭정보</h2></td>
				</tr>
				
				<tr>
					<td>
						<table border="2">
							<tr>
								<td>아이디</td>
								<td>예약날짜</td>
								<td>출발지</td>
								<td>도착지</td>
								<td>포장박스 수</td>
								<td>비용</td>
							</tr>
							<tr><td colspan="6"><hr></td></tr>
							<c:forEach items="${dtoS2}" var="dtoaa">
								
							<tr>
								<td>${dtoaa.user_ID}</td>
								<td>${dtoaa.reservat_date }</td>
								<td>${dtoaa.start_point }</td>
								<td>${dtoaa.end_point }</td>
								<td>${dtoaa.box }</td>
								<td>${dtoaa.cost }</td>
							</tr>
								
							</c:forEach>
						</table>
					</td>
				</tr>
			</table>
			<table class="section">
				<tr>
					<td  class="oo">
						<h1>내 정보</h1>
					</td>
				</tr>
				<tr>
					<td>
						<table border="">
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>			
		</td>
	</tr>
</table>
<div class="mar2"><jsp:include page="../inc/staff/bottom.jsp"/></div>