<%@page import="java.text.SimpleDateFormat"%>
<%@page import="exam1_not_jstl.dao.MemberDao"%>
<%@page import="exam1_not_jstl.dto.Member"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	MemberDao memberDao = MemberDao.getInstance();
	int custNo = memberDao.nextCustNo();
	
	System.out.println("custNo >> " + custNo);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	String joinDate = sdf.format(new Date());
%>
<h2>홈쇼핑 회원 등록</h2>
<form action="/exam1_not_jstl/write.jsp?update=n" method="post" id="join">
	<table border="1">
		<tr>
			<td>회원정보(자동발생)</td>
			<td><input type="text" name="custNo" id="custNo" value="<%=custNo %>" readonly="readonly"></td>
		</tr>
		<tr>
			<td>회원성명</td>
			<td><input type="text" name="custName" id="custName"></td>
		</tr>
		<tr>
			<td>회원번호</td>
			<td><input type="text" name="phone" id="phone" ></td>
		</tr>
		<tr>
			<td>회원주소</td>
			<td><input type="text" name="address" id="address" ></td>
		</tr>
		<tr>
			<td>가입일자</td>
     		<td><input type="text" name="joinDate" id="joinDate" value="<%=joinDate%>" readonly></td>
		</tr>
		<tr>
			<td>고객등급(A:VIP, B:일반, C:직원)</td>
			<td><input type="text" name="grade" id="grade"></td>
		</tr>
		<tr>
			<td>도시코드</td>
			<td><input type="number" name="city" id="city"></td>
		</tr>
	</table>
</form>
		<div class="btn_group">
			<button type="submit" onclick="register();return false">등록</button>
			<button type="button" onclick="toList();">조회</button> 
			<!-- <button type="submit" onclick="location='list'">조회</button> -->
			<!-- <input class="submit" type="button" id="list" onclick="history.back();" value="목록"> -->
		</div>