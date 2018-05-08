package com.wisdom.travel.vo;


import org.springframework.stereotype.Component;
/**
 * 上传文件管理VO类  表file_manager
 * @author XGB
 */
@Component
public class FileManagerURLVo{
	

	/**
	 * 上传文件访问路径
	 */
	private String url;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public FileManagerURLVo(String url) {
		super();
		this.url = url;
	}

	public FileManagerURLVo() {
		super();
	}

	@Override
	public String toString() {
		return "FileManagerURLVo [url=" + url + "]";
	}

	
	
}
