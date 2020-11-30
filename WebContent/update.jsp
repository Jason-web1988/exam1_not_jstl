<%@page import="java.text.SimpleDateFormat"%>
<%@page import="exam1_not_jstl.dto.Member"%>
<%@page import="java.util.List"%>
<%@page import="exam1_not_jstl.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	MemberDao memberDao = MemberDao.getInstance();
	int custNo = Integer.parseInt(request.getParameter("custNo"));
	System.out.println("custNo >> " + custNo);
	Member member = memberDao.selectMemberByNo(custNo);
	System.out.println("Member >> " + member);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	String joinDate = sdf.format(member.getJoinDate());
%>
<h2>홈쇼핑 회원 정보 수정</h2>

<form action="/exam1_not_jstl/write.jsp?update=y" method="post" id="join">
	<table border="1">
		<tr>
			<td>회원정보(자동발생)</td>
			<td><input type="text" name="custNo" id="custNo" value="<%=member.getCustNo()%>" readonly="readonly"></td>
		</tr>
		<tr>
			<td>회원성명</td>
			<td><input type="text" name="custName" id="custName" value="<%=member.getCustName()%>"></td>
		</tr>
		<tr>
			<td>회원번호</td>
			<td><input type="text" name="phone" id="phone" value="<%=member.getPhone()%>"></td>
		</tr>
		<tr>
			<td>회원주소</td>
			<td><input type="text" name="address" id="address" value="<%=member.getAddress()%>"></td>
		</tr>
		<tr>
			<td>가입일자</td>
			<td><input type="text" name="joinDate" id="joinDate" value="<%=joinDate%>" readonly="readonly"></td>
		</tr> 
		<tr>
			<td>고객등급(A:VIP, B:일반, C:직원)</td>
			<td><input type="text" name="grade" id="grade" value="<%=member.getGrade()%>"></td>
		</tr>
		<tr>
			<td>도시코드</td>
			<td><input type="number" name="city" id="city" value="<%=member.getCity()%>"></td>
		</tr>
	</table>
		<div class="btn_group">
			<button type="submit" onclick="update();return false">수정</button>
			<button type="submit" onclick="history.back();">목록</button>
			<!-- <input class="submit" type="button" id="list" onclick="history.back();" value="목록"> -->
		</div>
</form>