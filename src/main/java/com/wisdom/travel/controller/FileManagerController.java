package com.wisdom.travel.controller;


import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wisdom.travel.entity.FileManager;
import com.wisdom.travel.rabbitmq.publish.DeadLetterPublishService;
import com.wisdom.travel.service.FileService;
import com.wisdom.travel.service.IFileManagerService;
import com.wisdom.travel.set.SetConstants;
import com.wisdom.travel.tools.JSONUtils;
import com.wisdom.travel.tools.ToolsASCIIChang;
import com.wisdom.travel.tools.ToolsDate;
import com.wisdom.travel.tools.ToolsImage;
import com.wisdom.travel.tools.ToolsString;
import com.wisdom.travel.vo.MessageJson;
 

@Controller
@RequestMapping("/fileManager")
public class FileManagerController {
	
	//死信消息队列名称
	private static final String DEAD_LETTER_QUEUE_NAME = "dead-letter-queue";
	
	@Resource 
	private IFileManagerService fileManagerService;
	
	@Resource 
	private FileService fileService;
	
	@Autowired  
    private DeadLetterPublishService publishService;
	
	
	/**
	 * 获取文件 fileManager/interfaceGetFileByMaterial_id
	 * @param material_id 文件material_id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/interfaceGetFileByMaterial_id", method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
	public String interfaceGetFileByMaterial_id(HttpServletRequest req,HttpServletResponse resp,@RequestParam("material_id") String material_id){
		String nowTime = ToolsDate.getStringDate(ToolsDate.simpleSecond);
		System.out.println("===============================================" + nowTime);
		System.out.println("===============================================");
		System.out.println("====>>version : 0.0.2 fileManager/interfaceGetFileByMaterial_id Begin<<===");
		System.out.println("===============================================");
		System.out.println("===============================================" + nowTime);
		resp.setCharacterEncoding("UTF-8");
		try{
			if(material_id != null && !"".equals(material_id)) {
				FileManager fileManager= fileManagerService.findByMaterial_id(material_id);
				fileManager.setUrl(SetConstants.URL + fileManager.getUrl());
				if(fileManager != null) {
					String json = JSONUtils.toJSONString(fileManager);
					json = ToolsString.getStrRemoveBracket(json);
					System.out.println("===============================================");
					System.out.println("====>>json<<===" + json);
					System.out.println("===============================================");
					return json;
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("===============================================" + nowTime);
		System.out.println("===============================================");
		System.out.println("====>>version : 0.0.2 fileManager/interfaceGetFileByMaterial_id End<<===");
		System.out.println("===============================================");
		System.out.println("===============================================" + nowTime);
		return null;
	}
	
	
	/**
	 * 获取文件URL fileManager/interfaceGetFileURLByMaterial_id
	 * @param material_id 文件material_id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/interfaceGetFileURLByMaterial_id", method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
	public String interfaceGetFileURLByMaterial_id(HttpServletRequest req,HttpServletResponse resp,@RequestParam("material_id") String material_id){
		resp.setCharacterEncoding("UTF-8");
		try{
			if(material_id != null && !"".equals(material_id)) {
				FileManager fileManager= fileManagerService.findByMaterial_id(material_id);
				if(fileManager != null) {
					String url = SetConstants.URL + fileManager.getUrl();
					url = SetConstants.URL + fileManager.getUrl();
					String json = JSONUtils.toSingleStrJSON("url", url);
					System.out.println("===============================================");
					System.out.println("====>>**interfaceGetFileURLByMaterial_id**<<===" + json);
					System.out.println("===============================================");
					json = ToolsString.getStrRemoveBracket(json);
					return json;
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	/**
	 * 获取文件diskPath fileManager/interfaceGetFileDiskPathByMaterial_id
	 * @param material_id 文件material_id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/interfaceGetFileDiskPathByMaterial_id", method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
	public String interfaceGetFileDiskPathByMaterial_id(HttpServletRequest req,HttpServletResponse resp,@RequestParam("material_id") String material_id){
		resp.setCharacterEncoding("UTF-8");
		try{
			if(material_id != null && !"".equals(material_id)) {
				FileManager fileManager= fileManagerService.findByMaterial_id(material_id);
				if(fileManager != null) {
					String json = JSONUtils.toSingleStrJSON("diskPath", ToolsASCIIChang.stringToAscii(fileManager.getDiskPath()));
					System.out.println("===============================================");
					System.out.println("====>>**interfaceGetFileDiskPathByMaterial_id**<<===" + json);
					System.out.println("===============================================");
					json = ToolsString.getStrRemoveBracket(json);
					return json;
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 删除文件 fileManager/interfaceScanFile
	 * @param material_id 文件material_id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/interfaceScanFile", method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
	public String interfaceScanFile(HttpServletRequest req,HttpServletResponse resp,@RequestParam("status") String status){
		resp.setCharacterEncoding("UTF-8");
		try{
			if(status != null && !"".equals(status)) {
				List<FileManager> list= fileManagerService.findListByStatus(status);
				if(list != null) {
					Iterator<FileManager> iterator = list.iterator();
					int total = 0;
					while(iterator.hasNext()) {
						FileManager fileManager = iterator.next();
						if("-1".equals(fileManager.getStatus())) {
							int i = fileManagerService.deleteByMaterial_id(fileManager.getMaterial_id());
							if(i>0) {//删除磁盘文件
								String root = req.getRealPath("/");//文件的根目录
								String imgPath = fileManager.getDiskPath();
								System.out.println("===============================================");
								System.out.println("====>>**Prepare delete file  Interface IS interfaceScanFile**<<===");
								System.out.println("===============================================");
								ToolsImage.DelFileDispath(imgPath);
								total ++;
							}
						}
					}
					return total + "";
				}else {
					return "0";
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	
	/**
	 * MQ队列消息-删除文件 fileManager/interfaceDelFile
	 * @param material_id 文件material_id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/interfaceDelFile", method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
	public String interfaceDelFile(HttpServletRequest req,HttpServletResponse resp,@RequestParam("material_id") String material_id){
		resp.setCharacterEncoding("UTF-8");
		try{
			if(material_id != null && !"".equals(material_id)) {
				FileManager fileManager= fileManagerService.findByMaterial_id(material_id);
				if(fileManager != null) {
					if("-1".equals(fileManager.getStatus())) {
						int i = fileManagerService.deleteByMaterial_id(material_id);
						if(i>0) {//删除磁盘文件
							String root = req.getRealPath("/");//文件的根目录
							String imgPath = fileManager.getDiskPath();
							System.out.println("===============================================");
							System.out.println("====>>**MQ [Msg] Prepare delete file  Interface IS interfaceDelFile**<<===" + imgPath);
							System.out.println("===============================================");
							ToolsImage.DelFileDispath(imgPath);
						}
						return i + "";
					}else {
						return "0";
					}
					
				}else {
					return "0";
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	/**
	 * 非MQ队列消息-删除文件 fileManager/interfaceDelFileNotMQ
	 * @param material_id 文件material_id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/interfaceDelFileNotMQ", method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
	public String interfaceDelFileNotMQ(HttpServletRequest req,HttpServletResponse resp,@RequestParam("material_id") String material_id){
		resp.setCharacterEncoding("UTF-8");
		try{
			if(material_id != null && !"".equals(material_id)) {
				FileManager fileManager= fileManagerService.findByMaterial_id(material_id);
				if(fileManager != null) {
					int i = fileManagerService.deleteByMaterial_id(material_id);
					if(i>0) {//删除磁盘文件
//						String root = req.getRealPath("/");//文件的根目录
						String imgPath = fileManager.getDiskPath();
//						ToolsImage.DelFileDispath(imgPath);
						
						//延迟消息
						String url = SetConstants.URL + "fileManager/interfaceDelFileByMQ";
						String params = "dispath=" + imgPath;
						MessageJson messageJson = new MessageJson(UUID.randomUUID().toString(), url, "get" ,params , null);
						String message = MessageJson.transformationToJson(messageJson);
						System.out.println("=================" + message);
				    	publishService.send(DEAD_LETTER_QUEUE_NAME,message); 
					}
					return i + "";
					
				}else {
					return "0";
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	/**
	 * 更新文件引用 fileManager/interfaceUpdateFileStatus
	 * @param material_id 文件material_id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/interfaceUpdateFileStatus", method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
	public String interfaceUpdateFileStatus(HttpServletRequest req,HttpServletResponse resp,@RequestParam("material_id") String material_id){
		resp.setCharacterEncoding("UTF-8");
		try{
			if(material_id != null && !"".equals(material_id)) {
				FileManager fileManager= fileManagerService.findByMaterial_id(material_id);
				if(fileManager != null) {
					if("-1".equals(fileManager.getStatus())) {
						Date date = ToolsDate.getDate(ToolsDate.simpleSecond);
						fileManager.setStatus("1");
						fileManager.setCreateTime(date);
						fileManager.setUpdateTime(date);
						int i = fileManagerService.updateById(fileManager);
						System.out.println("===============================================");
						System.out.println("====>>**Prepare update file  Interface IS interfaceUpdateFileStatus**<<===" + i);
						System.out.println("===============================================");
						return i + "";
					}
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	/**
	 * 删除文件
	 * RabbitMQ 
	 * @param dispath 文件路径
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/interfaceDelFileByMQ", method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
	public String interfaceDelFileByMQ(HttpServletRequest req,HttpServletResponse resp,@RequestParam("dispath") String dispath){
		try {
			fileService.deleteFile(dispath);
			return "ok";
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
	}
	
}
