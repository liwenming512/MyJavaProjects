<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Basic Panel - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/demo/demo.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout">
	<div region="north" style="height: 50px;background-color: #ffff">
    	<table width="100%">
        <tr>
            <td width="50%"></td>
            <td valign="bottom"
                style="font-size: 20px;color:#8B8B8B;font-family: '楷体';"
                align="right" width="50%"><font size="3">&nbsp;&nbsp;<strong>当前管理员：</strong>${currUser.username
                    }</font>【管理员】
            </td>
        </tr>
    	</table>
	</div>
	<div data-options="region:'south',split:true" style="height:50px;"></div>
	<div data-options="region:'east',split:true" title="信息" style="width:100px;"></div>
	<div region="west" style="width: 200px;height:500px;" title="导航菜单" split="true">
	    <div class="easyui-accordion">
	        <div title="用户管理"
	             data-options="selected:true,iconCls:'icon-wenzhangs'"
	             style="padding: 10px;height:10px;">
	            <a
	                    href="javascript:openTab(' 文章管理','articleManage.jsp','icon-wenzhang')"
	                    class="easyui-linkbutton"
	                    data-options="plain:true,iconCls:'icon-wenzhang'"
	                    style="width: 150px;"> 用户管理</a>
	        </div>
	        <div title="图片管理" data-options="iconCls:'icon-shouye'"
	             style="padding:10px">
	            <a
	                    href="javascript:openTab(' 图片设置','pictureManage.jsp?type=1&grade=1','icon-tupians')"
	                    class="easyui-linkbutton"
	                    data-options="plain:true,iconCls:'icon-tupian'"
	                    style="width: 150px;"> 图片设置</a>
	        </div>
	        <div title="书籍管理" data-options="iconCls:'icon-shuji'"
	             style="padding:10px">
	            <a
	                    href="javascript:openTab(' 全部书籍','allBooksManage.jsp','icon-shuben')"
	                    class="easyui-linkbutton"
	                    data-options="plain:true,iconCls:'icon-shuben'"
	                    style="width: 150px;">全部书籍</a>
	        </div>
	        <div title="系统管理" data-options="iconCls:'icon-item'"
	             style="padding:10px;border:none;">
	            <a href="javascript:openTab(' 管理员列表','userManage.jsp','icon-lxr')"
	               class="easyui-linkbutton"
	               data-options="plain:true,iconCls:'icon-lxr'" style="width: 150px;">
	                管理员列表</a><a href="javascript:logout()"
	                            class="easyui-linkbutton"
	                            data-options="plain:true,iconCls:'icon-exit'"
	                            style="width: 150px;">
	            安全退出</a>
	        </div>
	    </div>
	</div>
	<div region="center">
		<div class="easyui-tabs" fit="true" border="false" id="tabs">
	   		<div title="首页" data-options="iconCls:'icon-home'">
	        </div>
	    </div>
	</div>
</body>
</html>