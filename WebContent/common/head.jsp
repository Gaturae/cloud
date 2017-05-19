<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="UTF-8">
	<title>Login</title>
	<link type="text/css" rel="stylesheet" href="/cloud/css/style.css" />
	<script type="text/javascript" src="/cloud/js/jquery.min.js"></script>
	<script type="text/javascript" src="/cloud/js/my.js"></script>
	<script type="text/javascript" src="/cloud/js/prototype-1.6.0.3.js"></script>
	<link rel="stylesheet" type="text/css" href="/cloud/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="/cloud/css/bootstrap-theme.css" />
	<script src="js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
</head>

<body onload="init()">
	
	<div id="head" style="width: 100%">
		<div id="head_logo">
			<a href="homePage.do" style="width: 100%;height: 100%"><img id="logo_img" src="/cloud/img/logo.png"></a>							
		</div>		
		<div id="big_text">
			<div style="margin-top: 4em">
				<a style="font-size: 30px;color: blue;text-decoration: none;font-weight: bold;font-family: fantasy;" href="homePage.do">首页</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a style="font-size: 30px;color: blue;text-decoration: none;font-weight: bold;font-family: fantasy;" href="usercenter.do">我的云盘</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a style="font-size: 30px;color: blue;text-decoration: none;font-weight: bold;font-family: fantasy;" href="usercenter.do">用户中心</a>
			</div>			
		</div>

		<div id="small_text">
			<div style="margin-right: 5%;float: right;">
   				<c:if test="${sessionScope.islogin==0||sessionScope.islogin==null}">    
					<a style="font-size: 13px;color: #00AEBF;text-decoration: none;" href="login.do">登录</a>
					<span style="font-size: 13px;color: black;">|</span>
					<a style="font-size: 13px;color: #00AEBF;text-decoration: none" href="regist.do">注册</a>
  				</c:if>  
   				<c:if test="${sessionScope.islogin==1}">  
					<a style="text-decoration: none">Hello <%=session.getAttribute("nickname") %>!</a>
					<a style="text-decoration: none;color: #00AEBF;" href="exit.do" >退出</a>	
   				</c:if>   
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a style="font-size: 13px;text-decoration: none;color: black;" href="download.do">客户端下载</a>
			</div>		 
		</div>
	</div>
</body>
</html>