package com.wisdom.travel.service;


import java.util.List;


import com.wisdom.travel.entity.FileManager;

public interface IFileManagerService {


	/**
	 * 保存
	 * @param bean
	 * @return 返回影响数据库的记录条数
	 * @throws Exception 向上抛出异常
	 */
	int save(FileManager bean) throws Exception;
	
	/**
	 * 按照ID更新
	 * @param bean
	 * @return 返回影响数据库的记录条数
	 * @throws Exception 向上抛出异常
	 */
	int updateById(FileManager bean) throws Exception;
 
	/**
	 * 按照material_id更新
	 * @param material_id
	 * @return 返回影响数据库的记录条数
	 * @throws Exception 向上抛出异常
	 */
	int updateByMaterial_id(String material_id) throws Exception;

	
	/**
	 * 按资源分组查询FileManager
	 * @return List<FileManager>
	 * @throws Exception 向上抛出异常
	 */
	List<FileManager> findListByGroup(int groupId) throws Exception;
	
	
	/**
	 * 按资源状态查询FileManager
	 * @return List<FileManager>
	 * @throws Exception 向上抛出异常
	 */
	List<FileManager> findListByStatus(String status) throws Exception;
	
	
	
	/**
	 * 按照material_id查询
	 * @param material_id
	 * @return FileManager
	 * @throws Exception 向上抛出异常
	 */
	FileManager findByMaterial_id(String material_id) throws Exception;
	
	
	/**
	 * 按照id查询
	 * @param id
	 * @return FileManager
	 * @throws Exception 向上抛出异常
	 */
	FileManager findById(String id) throws Exception;
	

	/**
	 * 按照material_id删除
	 * @param material_id
	 * @return 影响数据库的记录条数
	 * @throws Exception 向上抛出异常
	 */
	int deleteByMaterial_id(String material_id) throws Exception;

}
