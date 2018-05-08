package com.wisdom.travel.controller;

 
import java.io.File;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.DelayQueue;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.wisdom.travel.MQ.Message;
import com.wisdom.travel.entity.FileManager;
import com.wisdom.travel.service.IFileManagerService;
import com.wisdom.travel.set.SetConstants;
import com.wisdom.travel.tools.JSONUtils;
import com.wisdom.travel.tools.ToolsDate;
import com.wisdom.travel.tools.ToolsImageZip;
import com.wisdom.travel.tools.ToolsString;
import com.wisdom.travel.vo.FileManagerVo;

/**
 * 图片上传处理
 * @author XGB
 * @data 2018-1-24 15:55
 *
 */
@Controller
@RequestMapping("/upload")
public class UploadController {
	@Resource private IFileManagerService fileManagerService;
	
	/**
	 * URL upload/upImage
	 * 上传图片，并将其保存在数据库中，如果上传的图片保存了表单，则更新状态 
	 * @param file 上传的文件
	 * @return 返回上传后保存的material_id和图片访问全路径
	 */
	@ResponseBody
	@RequestMapping(value = "/upImage", method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public String upImage(HttpServletRequest request,HttpServletResponse resp,@RequestParam("file") MultipartFile file) {//, ModelMap model  参数
		String nowTime = ToolsDate.getStringDate(ToolsDate.simpleSecond);
		System.out.println("===============================================" + nowTime);
		System.out.println("===============================================");
		System.out.println("====>>version : 0.0.2 upload/upImage Begin<<===");
		System.out.println("===============================================");
		System.out.println("===============================================" + nowTime);
    	try {
    		//设置允许跨域访问文件
    		resp.setHeader("Access-Control-Allow-Origin", "*");
        	Date date = new Date();
        	Calendar now = Calendar.getInstance();  
        	int mou = now.get(Calendar.MONTH) + 1 ;//月
        	String saveFilePath = "upfile/image/" + now.get(Calendar.YEAR) + mou + now.get(Calendar.DAY_OF_MONTH);//服务器保存文件路径
        	String path = request.getSession().getServletContext().getRealPath(saveFilePath);
        	String fileName = file.getOriginalFilename();//获取文件名称
//        	System.out.println("===>>File Name<<===" + fileName);
        	String fileType = ToolsString.getString(fileName, ".", "");//文件类型
        	String diskPath = "/"+date.getTime() + "." + fileType;//文件保存在磁盘的名称
        	String dataBasePath = saveFilePath + diskPath;//保存在数据库内的名称
        	File targetFile = new File(path, diskPath);//保存文件
        	if (!targetFile.exists()) {//创建文件夹
        		targetFile.mkdirs();
        	}
        	// 保存
    		file.transferTo(targetFile);
    		//将图片压缩宽度为900 高度Auto
    		ToolsImageZip.zipImageFile(targetFile, targetFile, SetConstants.IMAGE_ZIP_WIDTH_AUTO, SetConstants.IMAGE_ZIP_HEIGHT);
    		System.out.println("========================================");
    		System.out.println("===>>zipImageFile SUCCESS!!!<<=== zip_SIZE:" + SetConstants.IMAGE_ZIP_WIDTH_AUTO + " / " + SetConstants.IMAGE_ZIP_HEIGHT);
    		System.out.println("========================================");
    		//在数据库中记录文件
    		String id = String.valueOf(UUID.randomUUID());
    		String material_id = id.replace("-", "");
    		Date currentdate = ToolsDate.getDate(ToolsDate.simpleSecond);
    		FileManager fileManager = new FileManager(id, fileName, "", 0, 0, path + diskPath, dataBasePath, dataBasePath, "image", material_id, currentdate, currentdate, "-1");
    		int i = fileManagerService.save(fileManager);
    		System.out.println("========================================");
    		System.out.println("===>>save<<===" + i);
    		System.out.println("========================================");
    		if(i > 0) {
    			String url = SetConstants.URL + "/" + dataBasePath;
    			FileManagerVo vo = new FileManagerVo(material_id, url);
        		String json = JSONUtils.toJSONString(vo);
        		json = ToolsString.getStrRemoveBracket(json);
        		System.out.println("========================================");
        		System.out.println("===>>json<<===" + json);
        		System.out.println("========================================");
        		 //获取消息队列
				DelayQueue<Message> queue =  (DelayQueue<Message>) request.getServletContext().getAttribute("MQ");
		        // 添加延时消息,message 延时3600 s  3600 * 1000  
		        queue.offer(new Message(2, material_id, 7200 * 1000));//消息id 2表示图片消息
        		return json;
    		}else {
    			return null;
    		}
    		
        } catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	System.out.println("===============================================" + nowTime);
		System.out.println("===============================================");
		System.out.println("====>>version : 0.0.2 upload/upImage End<<===");
		System.out.println("===============================================");
		System.out.println("===============================================" + nowTime);
		
        return null;
    }
	
	/**
	 * URL upload/upVoice
	 * 上传语音，并将其保存在数据库中，如果上传的资源保存了表单，则更新状态 
	 * @param file 上传的文件
	 * @return 返回上传后保存的material_id和资源访问全路径
	 */
	@ResponseBody
	@RequestMapping(value = "/upVoice", method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public String upVoice(HttpServletRequest request,HttpServletResponse resp,@RequestParam("file") MultipartFile file) {//, ModelMap model  参数
		String nowTime = ToolsDate.getStringDate(ToolsDate.simpleSecond);
		System.out.println("===============================================" + nowTime);
		System.out.println("===============================================");
		System.out.println("====>>version : 0.0.2 upload/upVoice Begin<<===");
		System.out.println("===============================================");
		System.out.println("===============================================" + nowTime);
		try {
    		//设置允许跨域访问文件
    		resp.setHeader("Access-Control-Allow-Origin", "*");
        	Date date = new Date();
        	Calendar now = Calendar.getInstance();  
        	int mou = now.get(Calendar.MONTH) + 1 ;//月
        	String saveFilePath = "upfile/voice/" + now.get(Calendar.YEAR) + mou + now.get(Calendar.DAY_OF_MONTH);//服务器保存文件路径
        	String path = request.getSession().getServletContext().getRealPath(saveFilePath);
        	String fileName = file.getOriginalFilename();//获取文件名称
//        	System.out.println("===>>File Name: " + fileName);
        	String fileType = ToolsString.getString(fileName, ".", "");//文件类型
        	String diskPath = "/"+date.getTime() + "." + fileType;//文件保存在磁盘的名称
        	String dataBasePath = saveFilePath + diskPath;//保存在数据库内的名称
        	File targetFile = new File(path, diskPath);//保存文件
        	if (!targetFile.exists()) {//创建文件夹
        		targetFile.mkdirs();
        	}
        	// 保存
    		file.transferTo(targetFile);
    		//在数据库中记录文件
    		String id = String.valueOf(UUID.randomUUID());
    		String material_id = id.replace("-", "");
    		Date currentdate = ToolsDate.getDate(ToolsDate.simpleSecond);
    		FileManager fileManager = new FileManager(id, fileName, "", 0, 0, path + diskPath, dataBasePath, dataBasePath, "voice", material_id, currentdate, currentdate, "-1");
//    		System.out.println("====>>fileManager: " + fileManager);
    		int i = fileManagerService.save(fileManager);
    		System.out.println("========================================");
    		System.out.println("===>>save<<===" + i);
    		System.out.println("========================================");
    		if(i > 0) {
    			String url = SetConstants.URL + "/" + dataBasePath;
    			FileManagerVo vo = new FileManagerVo(material_id, url);
        		String json = JSONUtils.toJSONString(vo);
        		json = ToolsString.getStrRemoveBracket(json);
        		System.out.println("========================================");
        		System.out.println("===>>json<<===" + json);
        		System.out.println("========================================");
        		 //获取消息队列
				DelayQueue<Message> queue =  (DelayQueue<Message>) request.getServletContext().getAttribute("MQ");
		        // 添加延时消息,message 延时3600 s  3600 * 1000  
		        queue.offer(new Message(2, material_id, 7200 * 1000));//消息id 2表示图片消息
        		return json;
    		}else {
    			return null;
    		}
    		
        } catch (Exception e) {
    		e.printStackTrace();
    	}
		System.out.println("===============================================" + nowTime);
		System.out.println("===============================================");
		System.out.println("====>>version : 0.0.2 upload/upVoice End<<===");
		System.out.println("===============================================");
		System.out.println("===============================================" + nowTime);
        return null;
    }

	
	/**
	 * URL upload/upVideo
	 * 上传视频，并将其保存在数据库中，如果上传的资源保存了表单，则更新状态 
	 * @param file 上传的文件
	 * @return 返回上传后保存的material_id和资源访问全路径
	 */
	@ResponseBody
	@RequestMapping(value = "/upVideo", method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public String upVideo(HttpServletRequest request,HttpServletResponse resp,@RequestParam("file") MultipartFile file) {//, ModelMap model  参数
		String nowTime = ToolsDate.getStringDate(ToolsDate.simpleSecond);
		System.out.println("===============================================" + nowTime);
		System.out.println("===============================================");
		System.out.println("====>>version : 0.0.2 upload/upVideo Begin<<===");
		System.out.println("===============================================");
		System.out.println("===============================================" + nowTime);
    	try {
    		//设置允许跨域访问文件
    		resp.setHeader("Access-Control-Allow-Origin", "*");
        	Date date = new Date();
        	Calendar now = Calendar.getInstance();  
        	int mou = now.get(Calendar.MONTH) + 1 ;//月
        	String saveFilePath = "upfile/video/" + now.get(Calendar.YEAR) + mou + now.get(Calendar.DAY_OF_MONTH);//服务器保存文件路径
        	String path = request.getSession().getServletContext().getRealPath(saveFilePath);
        	String fileName = file.getOriginalFilename();//获取文件名称
//        	System.out.println("===>>File Name: " + fileName);
        	String fileType = ToolsString.getString(fileName, ".", "");//文件类型
        	String diskPath = "/"+date.getTime() + "." + fileType;//文件保存在磁盘的名称
        	String dataBasePath = saveFilePath + diskPath;//保存在数据库内的名称
        	File targetFile = new File(path, diskPath);//保存文件
        	if (!targetFile.exists()) {//创建文件夹
        		targetFile.mkdirs();
        	}
        	// 保存
    		file.transferTo(targetFile);
    		//在数据库中记录文件
    		String id = String.valueOf(UUID.randomUUID());
    		String material_id = id.replace("-", "");
    		Date currentdate = ToolsDate.getDate(ToolsDate.simpleSecond);
    		FileManager fileManager = new FileManager(id, fileName, "", 0, 0, path + diskPath, dataBasePath, dataBasePath, "video", material_id, currentdate, currentdate, "-1");
//    		System.out.println("====>>fileManager: " + fileManager);
    		int i = fileManagerService.save(fileManager);
    		System.out.println("========================================");
    		System.out.println("===>>save<<===" + i);
    		System.out.println("========================================");
    		if(i > 0) {
    			String url = SetConstants.URL + "/" + dataBasePath;
    			FileManagerVo vo = new FileManagerVo(material_id, url);
        		String json = JSONUtils.toJSONString(vo);
        		json = ToolsString.getStrRemoveBracket(json);
        		System.out.println("========================================");
        		System.out.println("===>>json<<===" + json);
        		System.out.println("========================================");
        		 //获取消息队列
				DelayQueue<Message> queue =  (DelayQueue<Message>) request.getServletContext().getAttribute("MQ");
		        // 添加延时消息,message 延时3600 s  3600 * 1000  
		        queue.offer(new Message(2, material_id, 7200 * 1000));//消息id 2表示图片消息
        		return json;
    		}else {
    			return null;
    		}
    		
        } catch (Exception e) {
    		e.printStackTrace();
    	}
    	System.out.println("===============================================" + nowTime);
		System.out.println("===============================================");
		System.out.println("====>>version : 0.0.2 upload/upVideo End<<===");
		System.out.println("===============================================");
		System.out.println("===============================================" + nowTime);
        return null;
    }
	
	/**
	 * URL upload/upThumb
	 * 上传视频，并将其保存在数据库中，如果上传的资源保存了表单，则更新状态 
	 * @param file 上传的文件
	 * @return 返回上传后保存的material_id和资源访问全路径
	 */
	@ResponseBody
	@RequestMapping(value = "/upThumb", method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public String upThumb(HttpServletRequest request,HttpServletResponse resp,@RequestParam("file") MultipartFile file) {//, ModelMap model  参数
		String nowTime = ToolsDate.getStringDate(ToolsDate.simpleSecond);
		System.out.println("===============================================" + nowTime);
		System.out.println("===============================================");
		System.out.println("====>>version : 0.0.2 upload/upThumb Begin<<===");
		System.out.println("===============================================");
		System.out.println("===============================================" + nowTime);
		try {
    		//设置允许跨域访问文件
    		resp.setHeader("Access-Control-Allow-Origin", "*");
    		System.out.println("====>>version : 0.0.2 upload/upThumb");
        	Date date = new Date();
        	Calendar now = Calendar.getInstance();  
        	int mou = now.get(Calendar.MONTH) + 1 ;//月
        	String saveFilePath = "upfile/thumb/" + now.get(Calendar.YEAR) + mou + now.get(Calendar.DAY_OF_MONTH);//服务器保存文件路径
        	String path = request.getSession().getServletContext().getRealPath(saveFilePath);
        	String fileName = file.getOriginalFilename();//获取文件名称
//        	System.out.println("===>>File Name: " + fileName);
        	String fileType = ToolsString.getString(fileName, ".", "");//文件类型
        	String diskPath = "/"+date.getTime() + "." + fileType;//文件保存在磁盘的名称
        	String dataBasePath = saveFilePath + diskPath;//保存在数据库内的名称
        	File targetFile = new File(path, diskPath);//保存文件
        	if (!targetFile.exists()) {//创建文件夹
        		targetFile.mkdirs();
        	}
        	// 保存
    		file.transferTo(targetFile);
    		//在数据库中记录文件
    		String id = String.valueOf(UUID.randomUUID());
    		String material_id = id.replace("-", "");
    		Date currentdate = ToolsDate.getDate(ToolsDate.simpleSecond);
    		FileManager fileManager = new FileManager(id, fileName, "", 0, 0, path + diskPath, dataBasePath, dataBasePath, "thumb", material_id, currentdate, currentdate, "-1");
    		int i = fileManagerService.save(fileManager);
    		System.out.println("========================================");
    		System.out.println("===>>save<<===" + i);
    		System.out.println("========================================");
    		if(i > 0) {
    			String url = SetConstants.URL + "/" + dataBasePath;
    			FileManagerVo vo = new FileManagerVo(material_id, url);
        		String json = JSONUtils.toJSONString(vo);
        		json = ToolsString.getStrRemoveBracket(json);
        		System.out.println("========================================");
        		System.out.println("===>>json<<===" + json);
        		System.out.println("========================================");
        		 //获取消息队列
				DelayQueue<Message> queue =  (DelayQueue<Message>) request.getServletContext().getAttribute("MQ");
		        // 添加延时消息,message 延时3600 s  3600 * 1000  
		        queue.offer(new Message(2, material_id, 7200 * 1000));//消息id 2表示图片消息
        		return json;
    		}else {
    			return null;
    		}
    		
        } catch (Exception e) {
    		e.printStackTrace();
    	}
		System.out.println("===============================================" + nowTime);
		System.out.println("===============================================");
		System.out.println("====>>version : 0.0.2 upload/upThumb End<<===");
		System.out.println("===============================================");
		System.out.println("===============================================" + nowTime);
        return null;
    }
}
