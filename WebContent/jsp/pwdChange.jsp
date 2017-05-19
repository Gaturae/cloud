<%@page import="org.springframework.web.bind.annotation.ResponseBody"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>重设密码</title>
	<link type="text/css" rel="stylesheet" href="/cloud/css/style.css" />
	<script type="text/javascript" src="/cloud/js/jquery.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="/cloud/js/my.js" charset="utf-8"></script>
	<script type="text/javascript" src="/cloud/js/prototype-1.6.0.3.js" charset="utf-8"></script>
	<link rel="stylesheet" type="text/css" href="/cloud/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="/cloud/css/bootstrap-theme.css" />
	<script src="/cloud/js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
	<script src="/cloud/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>	
	
</head>
<body>

		<%@include file="../common/head.jsp"%>
		<div class="clear"></div>
		<div id="pwdChange" style="width: 100%;">
			<div style="margin-left: 14%;padding-top: 6%;">
				<span style="font-size: 30px;font-weight: bolder;">重设密码</span>
			</div>
			<div style="margin-left: 38%;width: 371px;text-align: center;" id="pwdChangePage1">
				<div class="input-group" id="loginUser" style="width: 250px">
 					 <span class="input-group-addon" id="basic-addon1" style="width: 67px">账号</span>
  					 <input type="text" class="form-control" placeholder="手机号/用户名" aria-describedby="basic-addon1"
  					 		name="username" style="width: 179px;height: 50px">
				</div>
				<div class="input-group" id="loginPassword" style="float: right;margin-right: 67px">
 					 <span class="input-group-addon" id="basic-addon1">验证码</span>
  					 <input type="text" class="form-control" placeholder="验证码" aria-describedby="basic-addon1"
  					 		name="code" style="width: 179px;height: 50px">	
				</div>
				<div style="margin-right: -96px;float: right;margin-top: -76px">
				  	<img src="image.do" id="img1"/>
					 <a href="javascript:;" 
						onclick="document.getElementById('img1').src='image.do?' + Math.random();">
						看不清，换一张
					 </a>	
				</div>	
				<div id="loginSubmit">	
						<a class="btn btn-success" style="width: 250px;height: 50px;padding-top: 16px" onclick="modify()">下一步</a>				
				</div>		
			</div>
			<div style="float:left;margin-left: 33%;display: none;width: 100%;margin-top: 1%" id="pwdChangePage2">
				<div style="border-color: blue;border-style: solid;width: 600px;height: 83px;line-height: 83px">
					<h3 style="float: left;padding-left: 20px;padding-top: 10px">通过手机短信验证找回</h3>	
					<a class="btn btn-success" style="width: 112px;font-size: 22px;margin-left: 176px;margin-top: 20px" 
							onclick="modifymode()">找回</a>					
				</div>
			</div>
			
	
			
			<div style="float: left;margin-left: 39%;display: none;width: 371px" id="pwdChangePage3">
				<div class="input-group" id="loginUser" style="width: 250px">
 					 <span class="input-group-addon" id="basic-addon1">手机号</span>
  					 <input type="text" class="form-control" placeholder="手机号" aria-describedby="basic-addon1"
  					 		name="phonenumber" style="width: 179px;height: 50px">
				</div>
				<div style="margin-top: -38px;float: right;margin-right: 143px">
					<input style="background-color: #FFBF0B;width: 102px;height: 24px;" type="button" onclick="msgsend()" id="codeBtn" value="获取短信验证码">	
				</div>
				<div class="input-group" id="loginPassword" style="width: 150px;float: right;margin-right: 67px">
 					 <span class="input-group-addon" id="basic-addon1">短信码</span>
  					 <input type="text" class="form-control" placeholder="短信码" aria-describedby="basic-addon1"
  					 		name="msgcode" style="width: 179px;height: 50px">	
				</div>
	
				<div id="loginSubmit" style="margin-left: 57px" >	
						<a class="btn btn-success" style="width: 250px;height: 50px;padding-top: 16px" onclick="modifybyphone()">下一步</a>				
				</div>		
			</div>
			
	
			<div style="float: left;margin-left: 40%;display: none;width: 371px" id="pwdChangePage4">
				<div class="input-group" id="loginUser" style="width: 300px;float: right;margin-right: 64px">
 					 <span class="input-group-addon" id="basic-addon1">输入新密码</span>
  					 <input type="password" class="form-control" placeholder="新密码" aria-describedby="basic-addon1"
  					 		name="newpassword" style="width: 204px;height: 50px">
				</div>
				<div class="input-group" id="loginPassword" style="width: 300px;float: right;margin-right: 64px">
 					 <span class="input-group-addon" id="basic-addon1">确认新密码</span>
  					 <input type="password" class="form-control" placeholder="确认新密码" aria-describedby="basic-addon1"
  					 		name="confirmpassword" style="width: 204px;height: 50px">	
				</div>
				<div id="loginSubmit" style="margin-left: 8px" >	
						<a class="btn btn-success" style="width: 300px;height: 50px;padding-top: 16px" onclick="modifydone()">确认</a>				
				</div>		
			</div>
			
		</div>
		<div class="clear"></div>
		<%@include file="../common/foot.jsp"%>

</body>
</html>