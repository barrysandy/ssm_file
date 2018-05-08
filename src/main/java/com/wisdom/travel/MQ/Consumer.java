package com.wisdom.travel.MQ;

import java.util.concurrent.DelayQueue;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.wisdom.travel.set.SetConstants;
import com.wisdom.travel.tools.ToolsHttpRequest;
import com.wisdom.travel.MQ.Message;

//消费者 
public class Consumer implements Runnable {  
	private static Logger log = LoggerFactory.getLogger(Consumer.class);
	
    // 延时队列  
    private DelayQueue<Message> queue;  
  
    public Consumer(DelayQueue<Message> queue) {  
        this.queue = queue;  
    }  
  
    @Override  
    public void run() {  
        while (true) {  
            try {  
                Message take = queue.take(); 
                int id = take.getId();
                String body = take.getBody();
                if(id == 1){//服务器消息
                	log.info("Queue Msg [system server]: " + body);
                	String url = SetConstants.URL+"/fileManager/interfaceScanFile";
                	String param = "status=-1";
                	String respMsg = ToolsHttpRequest.sendPost(url, param);
                	log.info("Queue Msg [file server] Scan the deleted resources to delete success Total: " + respMsg);
                }
                if(id == 2){//删除未引用的图片
                	String url = SetConstants.URL+"/fileManager/interfaceDelFile";
                	String param = "material_id="+body;
                	String respMsg = ToolsHttpRequest.sendPost(url, param);
                	log.info("Queue Msg [file server] delete non referenced files material_id: " + body + "  resp=" + respMsg);
                }
                
            } catch (InterruptedException e) {  
                e.printStackTrace();  
            }  
        }  
    }  
}  