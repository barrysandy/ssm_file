<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="x-ua-compatible" content="ie=7" />
	<meta http-equiv="Cache-Control" content="no-cache" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>图片上传示例</title>
    <script type="text/javascript" src="<%=basePath%>/static/js/jquery-1.8.3.min.js"></script>
  </head>
  <body>
	<form id="editForm" action="admin/SaveActivityRedPacketImage" method="post">
		<!-- 上传的图片显示在本DIV内 -->
		<div id="showIma">
            <img src="${image}" height="120px;" onclick="objclick2(event)">
        </div>
        <input id="file" type="file" name="file"/>
        <script type="text/javascript" src="<%=basePath%>/resources/upload/image/Image.js">
            updateImg = "";//上传文件的返回url
            material_id = "";//上传文件的返回material_id
        </script>
	</form>
	
	
	
  </body>
  <script type="text/javascript">
	/**
	 * 图片点击事件
	 * @param e
	 */
	function objclick2(e){
	//获取当前被点击的图片
	var img = e.target;
	//获取提交表单的隐藏图片输入框
	var inputImg = document.getElementById("inputImg");
	//删除提示
	var con = confirm("确定要删除该图片吗？"); //在页面上弹出对话框
		if(con == true){
			//设置输入框为值为""并删除点击的img元素
			inputImg.setAttribute("value", "");
			img.parentNode.removeChild(img);
		}
	};
  </script>
</html>