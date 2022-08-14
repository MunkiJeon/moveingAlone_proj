<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.singup{margin:0 auto;}
.formW{margin-top: 150px;}
</style>
<form action="SignUpReg" class="formW">
   <table class="singup">
      <tr><td align="center"><h2 >정보입력</h2></td></tr>
      <tr>
         <td align="center">아이디</td>
      </tr>
      <tr>
         <td align="center"><input type="text" name="pid" placeholder="아이디를 입력하세요"/></td>
      </tr>
      <tr>
         <td align="center">비밀번호</td>
      </tr>
      <tr>
         <td align="center"><input type="password" name="pw" placeholder="영문,숫자,특수문자를 포함한 8자 이상의 문자"/></td>
      </tr>
      <tr>
         <td align="center">이름</td>
      </tr>
      <tr>
         <td align="center"><input type="text" name="pname" placeholder="이름을 입력하세요"/></td>
      </tr>
      <tr>
         <td align="center">전화번호</td>
      </tr>
      <tr>
         <td align="center"><input type="text" name="number" placeholder="01012345678"/></td>
      </tr>
      <tr>
         <td align="center">이메일</td>
      </tr>
      <tr>
         <td align="center"><input type="text" name="mail" placeholder="id@example.com" /></td>
      </tr>
      <tr>
         <td align="center"><input type="submit" value="회원가입"></td>
      </tr>
      <tr>
         <td><h2>이미 회원이신가요?</h2><a href="Login">로그인하기</a></td>
      </tr>
   </table>
</form>