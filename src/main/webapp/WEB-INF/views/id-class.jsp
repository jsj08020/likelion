<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 | 클래스</title>
</head>

<style>

	#one.my-box.good.abcdiv{
		width:200px;
		height:50px;
		background:red;
		margin-bottom:15px;
	}
	
	
	.round{
		border-radius:20px;
		background:green;
	}
	
	
	#one-box{
		width:50px;
		height:50px;
		background: #0C85FF;
		margin-bottom:20px;
	}
	
	
	.parent-box .y{
		background:yellow;
		color:blue;
	}




</style>

<body>


	<div class="parent-box">
		<div>
			<span class="y">span1</span>
			<span class="y">span2</span>
			<span class="y">span3</span>
		</div>
	</div>
	<span>span4</span>
	
	
	<div style="margin-top:90px;">hello div</div> 
	 
	<span>hello</span>
	 
	<div id="one-box"></div>
	
	 
	<div id="one" class="my-box good abc"></div>
	<div class="my-box round" style="background:yellow;"></div>
	<div class="my-box"></div>
	<div class="my-box"></div>
	 
	 
</body>
</html>