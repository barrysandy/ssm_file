package com.wisdom.travel.entity;

import java.io.Serializable;
import java.util.Date;

import javax.xml.bind.annotation.XmlRootElement;

import org.springframework.stereotype.Component;
/**
 * 上传文件管理实体类  表file_manager
 * @author XGB
 */
@Component
@XmlRootElement(name = "FileManager.class")
public class FileManager implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String id;
	
	/**
	 * 文件名称
	 */
	private String name;
	
	/**
	 * 文件描述
	 */
	private String descM;
	
	/**
	 * 文件组id
	 */
	private int groupId;
	
	/**
	 * 文件组排序，数字越小越排前
	 */
	private int groupSort;
	
	/**
	 * 上传文件存放在磁盘的绝对路径
	 */
	private String diskPath;
	
	/**
	 * 上传文件存放在数据库的路径
	 */
	private String dataBasePath;
	
	/**
	 * 上传文件访问路径
	 */
	private String url;
	
	/**
	 * 上传文件类型   image 图片  world World文档 txt Txt文档等等
	 */
	private String typees;
    
    /**
     * 文件素材id 由上传完成后系统计算生成，唯一的标识码，获取该资源的唯一凭证
     */
    private String material_id;
    
    /**
     * 创建时间
     */
	private Date createTime;
	
	/**
	 * 更新时间
	 */
	private Date updateTime;
	
	/**
	 * -1已删除 1未删除 (上传文件引用状态   默认-1 未引用（或已经取消引用等待删除的资源）   1  已引用)
	 */
	private String status;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescM() {
		return descM;
	}

	public void setDescM(String descM) {
		this.descM = descM;
	}

	public int getGroupId() {
		return groupId;
	}

	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}

	public int getGroupSort() {
		return groupSort;
	}

	public void setGroupSort(int groupSort) {
		this.groupSort = groupSort;
	}

	public String getDiskPath() {
		return diskPath;
	}

	public void setDiskPath(String diskPath) {
		this.diskPath = diskPath;
	}

	public String getDataBasePath() {
		return dataBasePath;
	}

	public void setDataBasePath(String dataBasePath) {
		this.dataBasePath = dataBasePath;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTypees() {
		return typees;
	}

	public void setTypees(String typees) {
		this.typees = typees;
	}

	public String getMaterial_id() {
		return material_id;
	}

	public void setMaterial_id(String material_id) {
		this.material_id = material_id;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public FileManager(String id, String name, String descM, int groupId, int groupSort, String diskPath,
			String dataBasePath, String url, String typees, String material_id, Date createTime, Date updateTime,
			String status) {
		super();
		this.id = id;
		this.name = name;
		this.descM = descM;
		this.groupId = groupId;
		this.groupSort = groupSort;
		this.diskPath = diskPath;
		this.dataBasePath = dataBasePath;
		this.url = url;
		this.typees = typees;
		this.material_id = material_id;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.status = status;
	}

	public FileManager() {
		super();
	}

	@Override
	public String toString() {
		return "FileManager [id=" + id + ", name=" + name + ", descM=" + descM + ", groupId=" + groupId + ", groupSort="
				+ groupSort + ", diskPath=" + diskPath + ", dataBasePath=" + dataBasePath + ", url=" + url + ", typees="
				+ typees + ", material_id=" + material_id + ", createTime=" + createTime + ", updateTime=" + updateTime
				+ ", status=" + status + "]";
	}

	

	
}
