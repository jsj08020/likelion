<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REST API 갖고놀기</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.7.1.min.js"
 integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" 
 crossorigin="anonymous"></script>
 
<!-- jQuery가 무조건 앞에 있어야함 -->
</head> 

<style>
	h3{
		font-size:17px !important;
		font-weight:700;
	}
</style>
<body>

	<h3>일별 박스오피스 조회</h3>
	<div>
		<input id="date" type="date" placeholder="yyyymmdd"/>
		<button id="get-movie-btn">영화 조회</button>
	</div>
	
	<div style="width:900px;">
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">순위</th>
		      <th scope="col">영화명</th>
		      <th scope="col">누적관객수</th>
		      <th scope="col">개봉일</th>
		    </tr> 
		  </thead>
		  <tbody id="movie-list">
<!-- 					<tr>
						<th scope="row">1</th>
						<td>재미있는 영화</td>
						<td>100,000명</td>
						<td>없음</td>
					</tr> -->
		  </tbody>
		</table>
	</div>
	

	
	
	<h3 style="margin-top:200px">TODO 1개 조회</h3>
	<div>
		<input id="todo-id" type="number" placeholder="todo id.."/>
		<button id="get-todo-btn">TODO 조회</button>
	</div>
	
	<div style="width:900px;">
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">user</th>
		      <th scope="col">id</th>
		      <th scope="col">title</th>
		      <th scope="col">completed</th>
		    </tr> 
		  </thead>
		  <tbody id="todo-list">

		  </tbody>
		</table>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<!-- 	<h3>회원등록 테이블</h3>	
	<div style="width:900px;">
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">순번</th>
		      <th scope="col">이름</th>
		      <th scope="col">나이</th>
		      <th scope="col">주소</th>
		    </tr>
		  </thead>
		  <tbody id="user-list">
		  </tbody>
		</table>
	</div> -->
<!-- 	<h3>제이쿼리 갖고 놀기</h3>
	<input id="inp" placeholder="입력....."/>
	<button id="my-btn">Do! 버튼</button>
	<span>결과 :</span>
	<span id="result"></span> -->
	
	

	
</body>

<script src="./js/rest-api.js"></script>

</html>