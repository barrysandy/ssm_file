package com.wisdom.travel.service;


public interface FileService {

	/**
	 * 按照路径删除文件
	 * @param dispath 磁盘路径
	 * @throws Exception 向上抛出异常
	 */
	void deleteFile(String dispath) throws Exception;

}
