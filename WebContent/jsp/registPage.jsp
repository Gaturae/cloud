<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>用户注册</title>
	<link type="text/css" rel="stylesheet" href="../css/style.css" />
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/my.js"></script>
	<script type="text/javascript" src="../js/prototype-1.6.0.3.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css" />
	<script src="/cloud/js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
	<script src="/cloud/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>	
</head>

<body>
	<%@include file="/common/head.jsp"%>
	<div class="clear"></div>
	<div id="registPage" style="width: 100%">
		<div style="margin-left: 14%;padding-top: 5%;">
			<span style="font-size: 30px;font-weight: bolder;">注册账号</span>
		</div>
		<div style="margin-left: 40%;margin-top: 3%;width: 308px;text-align: center;">
			
				<div id="table" style="text-align: center;">
					<div class="input-group">
 					 	<span class="input-group-addon" id="basic-addon1" style="width: 85px">手机号:</span>
  					 	<input type="text" class="form-control" placeholder="手机号/用户名" aria-describedby="basic-addon1"
  					 			name="phonenumber" style="width: 223px">
					</div>
					<div >
						<button style="background-color: #FFBF0B;margin-right: 37px" type="button" onclick="msgsend()">获取短信验证码
					</div>
					<div class="input-group" style="margin-top: 20px">
 					 	<span class="input-group-addon" id="basic-addon1" style="width: 85px">短信码:</span>
  					 	<input type="text" class="form-control" placeholder="短信码" aria-describedby="basic-addon1"
  					 			name="code" style="width: 223px">
					</div>
					<div class="input-group" style="margin-top: 20px">
 					 	<span class="input-group-addon" id="basic-addon1">输入密码:</span>
  					 	<input type="password" class="form-control" placeholder="密码" aria-describedby="basic-addon1"
  					 			name="password">
					</div>
					<div class="input-group" style="margin-top: 20px">
 					 	<span class="input-group-addon" id="basic-addon1">确认密码:</span>
  					 	<input type="password" class="form-control" placeholder="确认密码" aria-describedby="basic-addon1"
  					 			name="confirmpassword">
					</div>
				</div>
				<div style="margin-top: 20px">
					<a class="btn btn-success" style="width: 306px" onclick="doRegist()">提交</a>
				</div>			
		</div>
	</div>
	<div class="clear"></div>
	<%@include file="/common/foot.jsp"%>

</body>
</html>