<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>用户登录</title>
	<link type="text/css" rel="stylesheet" href="/cloud/css/style.css" />
	<script type="text/javascript" src="/cloud/js/jquery.min.js"></script>
	<script type="text/javascript" src="/cloud/js/my.js"></script>
	<script type="text/javascript" src="/cloud/js/prototype-1.6.0.3.js"></script>
	<link rel="stylesheet" type="text/css" href="/cloud/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="/cloud/css/bootstrap-theme.css" />
	<script src="/cloud/js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
	<script src="/cloud/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>	
</head>
<body>
		<%@include file="../common/head.jsp"%>
		<div class="clear"></div>
		<div id="loginPage" style="width: 100%;">
			<div style="width: 5%;float: left;margin-left: 19%;margin-top: 5%">
				<img  src="/cloud/img/login.jpg" style="width: 292%">
			</div>
			
			<div id="loginPanel">
				<form action="doLogin.do" method="post">
					<div class="input-group" id="loginUser" style="width: 250px">
 					 	<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
  					 	<input type="text" class="form-control" placeholder="手机号/用户名" 
  					 			aria-describedby="basic-addon1"  name="username" style="height: 50px">
					</div>				
					<div class="input-group" id="loginPassword" style="width: 250px">
 						 <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-lock"></span></span>
  						 <input type="password" class="form-control" placeholder="密码" 
  						 		aria-describedby="basic-addon1"  name="password" style="height: 50px">
					</div>
					<div id="loginSubmit" style="margin-left: 58px">				
							<input type="submit" value="登录" class="btn btn-success" style="width: 250px;height: 50px">				
					</div>
				</form>
					<div style="margin-right: 68px;float: right;margin-top: 20px">
						<a style="text-decoration: none" href="pwdchange.do">忘记密码</a>
					</div>
			</div>					
		</div>
		<div class="clear"></div>
		<%@include file="../common/foot.jsp"%>
</body>
</html>