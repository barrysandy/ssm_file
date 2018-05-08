package com.wisdom.travel.InitRun;

import java.io.IOException;
import java.util.Calendar;
import java.util.TimerTask;
import java.util.concurrent.DelayQueue;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.wisdom.travel.MQ.Message;
import com.wisdom.travel.MQ.util.MessageQueueUtil;
import com.wisdom.travel.tools.ToolsDate;

public class exportHistoryBean extends TimerTask {  
	
	private static Logger log = LoggerFactory.getLogger(exportHistoryBean.class);
	
    @SuppressWarnings("unused")
	private static final int C_SCHEDULE_HOUR = 0;  
    @SuppressWarnings("unused")
	private static boolean ISRUN = false;  
    private ServletContext context = null;  
  
    public exportHistoryBean(ServletContext context) {  
        this.context = context;  
    }  
  
	public void run() {  
		
		@SuppressWarnings("unused")
		Calendar calendar = Calendar.getInstance();  
        ISRUN = true;  
        //context.log(">>>开始执行指定任务");  
		@SuppressWarnings("unused")
		int day = Calendar.getInstance().get(Calendar.DAY_OF_MONTH);  
		try {
			//启动Application配置属性
			setApplication(context);
			log.info("System Msg[Inti Project"+"] : Complete!!>>>Date:"+ ToolsDate.getStringDate(ToolsDate.simpleSecond));
		} catch (Exception e) {
			e.printStackTrace();
		}
		ISRUN = false;  
    }  
	
    /**
     * Application配置属性
     * @param servletContext
     * @throws Exception 
     * @throws IOException 
     */
     public	void setApplication(ServletContext context) throws IOException, Exception{
    	//队列消息加入Application
    	MessageQueueUtil mqm = MessageQueueUtil.getInstance();
		@SuppressWarnings("unchecked")
		DelayQueue<Message> queue = (DelayQueue<Message>) context.getAttribute("MQ");
    	if(queue == null){
    		queue = mqm.getMQ();
    		context.setAttribute("MQ", queue);
    	}
    	
    	//String url = SetConstants.URL+"/fileManager/interfaceScanFile";
    	//String param = "status=-1";
    	//String respMsg = ToolsHttpRequest.sendPost(url, param);
    	//log.info("System Msg[File Servece] Delete the resources that are not referenced Total: " + respMsg);
    	
    }

}  