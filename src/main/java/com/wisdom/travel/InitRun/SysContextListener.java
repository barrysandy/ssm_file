package com.wisdom.travel.InitRun;

import java.util.Timer;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * 任务监听
 * @author Administrator
 *
 */
public class SysContextListener implements ServletContextListener {  
	
	
    private Timer timer = null;  
  
    public void contextInitialized(ServletContextEvent event) {  
    	/** 初始化创建RabbitMQ消费者 */
    	try {
//    		String message = "hello world!" + System.currentTimeMillis();  
    		
//    		Producer.sendMessage(message);
    		
//			Consumer.createConsumer();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
    	
        // 在这里初始化监听器，在tomcat启动的时候监听器启动，可以在这里实现定时器功能  
        timer = new Timer(true);  
        //System.out.println(">>>启动成功");  
        // 添加日志，可在tomcat日志中查看到  
        // event.getServletContext().log(">>>定时器已启动--------------");  
        // 调用exportHistoryBean，0表示任务无延迟，1*60*60*1000表示1小时执行一次。  
        timer.schedule(new exportHistoryBean(event.getServletContext()), 0,  
        		1 * 60 * 60 * 1000);  //1 * 60 * 60 * 1000
        //event.getServletContext().log(">>>已经添加任务-------------");  
    }  
  
    // 在这里关闭监听器，所以在这里销毁定时器。  
    public void contextDestroyed(ServletContextEvent event) {  
        timer.cancel();  
        //event.getServletContext().log("定时器销毁---------------");  
    }  
  
}  