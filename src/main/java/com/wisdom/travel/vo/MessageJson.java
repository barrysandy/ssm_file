package com.wisdom.travel.vo;

import com.wisdom.travel.tools.JSONUtils;
import com.wisdom.travel.tools.ToolsString;

public class MessageJson {

	private String id;//消息id
	private String url;//消息访问地址 
	private String requestMethod;//url 请求方式 get/post
	private String params;//url 请求的参数
	private String descM;//消息描述
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getRequestMethod() {
		return requestMethod;
	}

	public void setRequestMethod(String requestMethod) {
		this.requestMethod = requestMethod;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public String getDescM() {
		return descM;
	}

	public void setDescM(String descM) {
		this.descM = descM;
	}

	
	public MessageJson() {
		super();
	}

	public MessageJson(String id, String url, String requestMethod, String params, String descM) {
		super();
		this.id = id;
		this.url = url;
		this.requestMethod = requestMethod;
		this.params = params;
		this.descM = descM;
	}

	//** message对象转json  */
	public static String transformationToJson(MessageJson messageJson) {
		if(messageJson != null) {
			String json = JSONUtils.toJSONString(messageJson);
			json = ToolsString.getStrRemoveBracket(json);
			return json;
		}else {
			return null;
		}
	}
	
	//** json转message对象  */
	public static MessageJson transformationToJson(String json) {
		if(json != null) {
			try {
				MessageJson messageJson = JSONUtils.toBean(json, MessageJson.class);
				return messageJson;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
			
		}else {
			return null;
		}
	}
}
