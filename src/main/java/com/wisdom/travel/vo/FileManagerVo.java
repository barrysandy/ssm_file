package com.wisdom.travel.vo;


import org.springframework.stereotype.Component;
/**
 * 上传文件管理VO类  表file_manager
 * @author XGB
 */
@Component
public class FileManagerVo{
	
	/**
	 * 上传文件的material_id
	 */
	private String material_id;
	/**
	 * 上传文件访问路径
	 */
	private String url;
	public String getMaterial_id() {
		return material_id;
	}
	public void setMaterial_id(String material_id) {
		this.material_id = material_id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public FileManagerVo(String material_id, String url) {
		super();
		this.material_id = material_id;
		this.url = url;
	}
	public FileManagerVo() {
		super();
	}
	@Override
	public String toString() {
		return "FileManager [material_id=" + material_id + ", url=" + url + "]";
	}

	
	
}
