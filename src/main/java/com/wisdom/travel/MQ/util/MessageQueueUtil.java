package com.wisdom.travel.MQ.util;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.DelayQueue;

import com.wisdom.travel.MQ.Consumer;
import com.wisdom.travel.MQ.Message;

public class MessageQueueUtil {
       
	private static MessageQueueUtil instance = null;  
    private static DelayQueue<Message> queue = null;
    private static Map<String, String> codeMap = null;	
    private MessageQueueUtil(){}  
      
    public static MessageQueueUtil getInstance() {  
        if(instance == null){//懒汉式  
            instance = new MessageQueueUtil(); 
            // 创建延时队列  
            queue = new DelayQueue<Message>();  
            Message message = new Message(1, " The message queue is successful", 5000);  
            queue.offer(message);  
            // 启动消费线程  
            new Thread(new Consumer(queue)).start();
            
            //
            codeMap = new HashMap<String,String>();
        }  
        return instance;  
    }      
    public DelayQueue<Message> getMQ() {
        return queue;  
    }
    public Map<String, String> getCodeMap() {
        return codeMap;  
    }   
}
