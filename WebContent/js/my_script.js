function validCheck(){
	if(document.getElementById("custNo").value == 0){
		alert("회원 번호가 입력되지 않음");
		return false;
	}
	if(document.getElementById("custName").value == 0){
		alert("회원 성명이 입력되지 않음");
		document.getElementById("custName").focus();
		return false;
	}
	if(document.getElementById("phone").value == 0){
		alert("회원 전화번호가 입력되지 않음");
		document.getElementById("phone").focus();
		return false;
	}
	if(document.getElementById("address").value == 0){
		alert("회원 주소가 입력되지 않음");
		document.getElementById("address").focus();
		return false;
	}
	if(document.getElementById("grade").value == 0){
		alert("회원 등급이 입력되지 않음");
		document.getElementById("grade").focus();
		return false;
	}
	if(document.getElementById("city").value == 0){
		alert("회원 도시가 입력되지 않음");
		document.getElementById("city").focus();
		return false;
	}
	return true;
}

function update(){
	if(validCheck()){
		alert("회원정보수정이 완료되었습니다.");
		document.getElementById("join").submit();
	}
}

function register(){
	if(validCheck()){
		alert("회원등록가 등록 되었습니다.");
		document.getElementById("join").submit();
	}
}	
function toList(){
	alert("목록으로 넘어갑니다.");
      window.location.href="/exam1_not_jstl/index.jsp?pp=list";
}