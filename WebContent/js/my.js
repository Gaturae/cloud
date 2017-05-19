function getXhr() {
	var xhr = null;
	if (window.XMLHttpRequest) {
		// 非ie浏览器
		xhr = new XMLHttpRequest();
	} else {
		xhr = new ActiveXObject('Microsoft.XMLHttp');
	}
	return xhr;
}

////发送短信验证
function msgsend(){
	
	var xhr = getXhr();
	xhr.open("post", "msgsend.do", true);
	var number = $("input[name='phonenumber']").val(); 
	var codeBtn = document.getElementById('codeBtn').value;
	var a = 30
	xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			intervalid  = setInterval(function(){	
				document.getElementById('codeBtn').disabled=true
				if(a==0){
					document.getElementById('codeBtn').disabled=false
					$("#codeBtn").css("background-color","#FFBF0B");
					document.getElementById('codeBtn').value ="获取短信验证码"
					clearInterval(intervalid); 
				}else{
					document.getElementById('codeBtn').value =a+"秒后重新发送"
					$("#codeBtn").css("background-color","#BFB79F");
					a--				
				}					
			}, 1000)		
		}
	};
	xhr.send("number="+number);
	
}

//修改密码前的用户确认
function modify(){
	
	var xhr = getXhr();
	var username = $("input[name='username']").val(); //获取input中的值 
	var code = $("input[name='code']").val(); //获取input中的值
	xhr.open("post", "modifyPassword.do", true);
	xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			// 返回 是一个json字符串
			var txt =xhr.responseText;	
			var info = txt.evalJSON();
			if(info.msg=="OK"){
				
				$("#pwdChangePage2").css({display:"block"})
				$("#pwdChangePage1").css({display:"none"})
				$("#pwdChangePage3").css({display:"none"})
				$("#pwdChangePage4").css({display:"none"})
				
			}else{
				alert(info.msg)
			}
			
			
		}
	};
	xhr.send("username="+username+"&code="+code);	
}

//修改密码的方式选择
function modifymode(){
	
	var xhr = getXhr();
	xhr.open("post", "modifymode.do", true);
	xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			//var txt =xhr.responseText;	
			//var info = txt.evalJSON();
							
				$("#pwdChangePage3").css({display:"block"})
				$("#pwdChangePage1").css({display:"none"})
				$("#pwdChangePage2").css({display:"none"})
				$("#pwdChangePage4").css({display:"none"})
				

						
		}
	};
	xhr.send(null);
	
}

function modifybyphone(){
	
	var xhr = getXhr();
	xhr.open("post", "modifybyphone.do", true);
	var msgcode = $("input[name='msgcode']").val(); //获取input中的值
	xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			var txt =xhr.responseText;	
			var info = txt.evalJSON();
				
			if(info.msg=="OK"){
				
				$("#pwdChangePage4").css({display:"block"})
				$("#pwdChangePage1").css({display:"none"})
				$("#pwdChangePage3").css({display:"none"})
				$("#pwdChangePage2").css({display:"none"})
				
			}else{
				alert(info.msg)
			}
						
		}
	};
	xhr.send("msgcode="+msgcode);
	
}

function modifydone(){

	var xhr = getXhr();
	xhr.open("post", "modifydone.do", true);
	var newpassword = $("input[name='newpassword']").val(); //获取input中的值
	var confirmpassword = $("input[name='confirmpassword']").val(); //获取input中的值
	xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			var txt =xhr.responseText;	
			var info = txt.evalJSON();
			if(info.msg=="OK"){
				
				window.location.href = 'login.do';
				
			}else{
				alert(info.msg)
			}
						
		}
	};
	xhr.send("newpassword="+newpassword+"&confirmpassword="+confirmpassword);

	
}

function doRegist(){
	
	var xhr = getXhr();
	xhr.open("post", "doRegist.do", true);
	var password = $("input[name='password']").val(); //获取input中的值
	var confirmpassword = $("input[name='confirmpassword']").val(); //获取input中的值
	var code = $("input[name='code']").val(); //获取input中的值
	var phonenumber = $("input[name='phonenumber']").val(); //获取input中的值
	xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4) {
			var txt =xhr.responseText;	
			var info = txt.evalJSON();
					
			if(info.msg=="OK"){
				
				window.location.href = 'login.do';
				
			}else{
				alert(info.msg)
			}
						
		}
	};
	xhr.send("password="+password+"&confirmpassword="+confirmpassword
				+"&phonenumber="+phonenumber+"&code="+code);
	
}

