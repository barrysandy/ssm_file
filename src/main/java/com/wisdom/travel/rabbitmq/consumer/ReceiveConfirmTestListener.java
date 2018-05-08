package com.wisdom.travel.rabbitmq.consumer;

import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.core.ChannelAwareMessageListener;
import org.springframework.stereotype.Service;

import com.rabbitmq.client.Channel;
import com.wisdom.travel.tools.ToolsHttpRequest;
import com.wisdom.travel.vo.MessageJson;

@Service("receiveConfirmTestListener")
public class ReceiveConfirmTestListener implements ChannelAwareMessageListener {  
	  

	@Override
	public void onMessage(Message message, Channel channel) throws Exception {
		try{
			String json = new String(message.getBody());
			String flag = "fail";
			System.out.println("消费消息  consumer--: " + message.getMessageProperties() + " : " + json );
			MessageJson messageJson = MessageJson.transformationToJson(json);
			if(messageJson != null) {
				if(messageJson.getRequestMethod() != null) {
					if("get".equals(messageJson.getRequestMethod())) {
						flag = ToolsHttpRequest.sendGet(messageJson.getUrl(), messageJson.getParams());
					}else if("post".equals(messageJson.getRequestMethod())) {
						flag = ToolsHttpRequest.sendPost(messageJson.getUrl(), messageJson.getParams());
					}
				}
			}
			
			if("ok".equals(flag)) {
				//ACK消息
				channel.basicAck(message.getMessageProperties().getDeliveryTag(), false);
			}
		}catch(Exception e){
			e.printStackTrace();//TODO 业务处理
			channel.basicNack(message.getMessageProperties().getDeliveryTag(), false,false);
		}
	}  
  
}  
