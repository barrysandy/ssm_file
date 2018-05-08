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
    <title>图片服务器API文档</title>
    <style type="text/css">
		table.gridtable {
			font-family: verdana,arial,sans-serif;
			font-size:11px;
			color:#333333;
			border-width: 1px;
			border-color: #666666;
			border-collapse: collapse;
		}
		table.gridtable th {
			border-width: 1px;
			padding: 8px;
			border-style: solid;
			border-color: #666666;
			background-color: #dedede;
		}
		table.gridtable td {
			border-width: 1px;
			padding: 8px;
			border-style: solid;
			border-color: #666666;
			background-color: #ffffff;
		}
	</style>
  </head>
  <body style="width: 100%;">
  	<div align="center" style="width: 80%;margin-left: 10%;margin-right: 10%;margin-top: 50px;margin-bottom: 20px;">SSM图片服务器API</div>
  	<div align="center">
  		<p>
	  		接口名称:<b>获取文件url</b>
	  		接口地址(<b>GET</b>):${url }fileManager/interfaceGetFileURLByMaterial_id
	  		参数:<b>String material_id</b> 资源的唯一标识
	  		返回值:Json格式 {"url":"${url }upfile/image/2018125/1516850076731.jpg"}
	  		接口描述:获取资源url路径的接口
  		</p>
  		
  		<p>
	  		接口名称:<b>获取文件绝对路径</b>
	  		接口地址(<b>GET</b>):${url }fileManager/interfaceGetFileDiskPathByMaterial_id
	  		参数:<b>String material_id</b> 资源的唯一标识
	  		返回值:Json格式 {"url":"ASCII码格式的绝对路径"}
	  		接口描述:获取资源url路径的接口
  		</p>
  		
  		<p>
	  		接口名称:<b>获取文件</b>
	  		接口地址(<b>GET</b>):${url }fileManager/interfaceGetFileByMaterial_id
	  		参数:<b>String material_id</b> 资源的唯一标识
	  		返回值:Json格式 {"createTime":null,"dataBasePath":"upfile/image/2018125/1516850076731.jpg","descM":"","diskPath":"1516850076731.jpg","groupId":0,"groupSort":0,"id":"4c0fb12d-3093-4d6d-a018-604aebc55dd6","material_id":"4c0fb12d30934d6da018604aebc55dd6","name":"3.jpg","status":"-1","typees":"Image","updateTime":null,"url":"${url }upfile/image/2018125/1516850076731.jpg"}
	  		接口描述:获取资源实例的接口
  		</p>
  		
  		<p>
	  		接口名称:<b>上传文件</b>
	  		接口地址(<b>POST</b>):${url }upload/（图片upImage）（视频upVideo）（语音upVoice）（视频upThumb）
	  		参数:<b>MultipartFile file</b> 文件选择input参数
	  		返回值:Json格式 {"material_id":"794813d483f6463cb40c58a2f0f59022","url":"${url }/upfile/image/2018125/1516849219945.jpg"}
	  		接口描述:可以利用ajxa上传，需要表单上传，文件上传后如果2小时没有更新资源的引用（引用时可以调用接口：<b style="color: green;">更新文件引用</b>），那么该资源会被系统删除。
  		</p>
  		
  		<p>
	  		接口名称:<b>删除文件(消息队列方式)</b>
	  		接口地址(<b>POST</b>):${url }fileManager/interfaceDelFile
	  		参数:<b>String material_id</b> 资源的唯一标识
	  		返回值:String格式 返回1删除成功
	  		接口描述:删除资源的接口
  		</p>
  		
  		<p>
	  		接口名称:<b>删除文件（非消息队列方式）</b>
	  		接口地址(<b>GET</b>):${url }fileManager/interfaceDelFileNotMQ
	  		参数:<b>String material_id</b> 资源的唯一标识
	  		返回值:String格式 返回1删除成功
	  		接口描述:删除资源的接口
  		</p>
  		
  		<p>
	  		接口名称:<b>更新文件引用</b>
	  		接口地址(<b>POST</b>):${url }fileManager/interfaceUpdateFileStatus
	  		参数:<b>String material_id</b> 资源的唯一标识
	  		返回值:String格式 返回1更新成功
	  		接口描述:在确定引用该资源时，调用该接口，则该资源不会被队列消息清除。
  		</p>
  		
  		<p>
	  		接口名称:<b>扫描整个系统，并删除状态为status的文件</b>
	  		接口地址(<b>POST</b>):${url }fileManager/interfaceScanFile
	  		参数:<b>String status</b> 资源的状态，-1表示删除待删除状态的资源，1表示删除引用状态的资源(这里输入-1即可，1则为删除所有引用的资源，慎用。)
	  		返回值:String格式 返回删除的文件总记录数
	  		接口描述:系统自动启动会执行一次，一般不建议调用。
  		</p>
  	</div>
	<div style="height: 10%;"></div>
  </body>
</html>