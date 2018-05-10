<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>用户登录页面</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/demo/demo.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
</head>
<body>
	<h2 align="center">请输入用户名、密码登录系统</h2>
	<form id="userloginform" action="${pageContext.request.contextPath}/user/login.do" method="post">
		<table align="center">
			<tr>
				<td>用户名:</td>
				<td><input class="easyui-textbox" type = "text" value="${user.username}" name="username" 
					id="username" type="text"></input>
				</td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" class=input value="${user.password}" 
					name="password" id="password"></input>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input align="center" type="submit" value="Submit"></input></td>
			</tr>
		</table>
	</form>

	<!-- 
	<form id="userloginform" action="${pageContext.request.contextPath}/user/login.do" method="post">
    	<table cellpadding="5" align="center">
    		<tr>
    			<td>用户名:</td>
    			<td><input class="easyui-textbox" type="text" name="username" value = "${user.username}"
    				data-options="required:true"></input></td>
    		</tr>
    		<tr>
    			<td>密码:</td>
    			<td><input class="easyui-textbox" type="password" name="password" value = "${user.username}"
    				data-options="required:true"></input></td>
    		</tr>
    	</table>
    </form>
    <div style="text-align:center;padding:5px">
    	<a class="easyui-linkbutton" onclick="submitForm()">登录</a>
    </div>
    <script>
		function submitForm(){
			console.log($('#userloginform'));
			$('#userloginform').form('submit');
		}
	</script>
	 -->
</body>
</html>