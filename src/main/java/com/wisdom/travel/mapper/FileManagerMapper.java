package com.wisdom.travel.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.wisdom.travel.entity.FileManager;

/**
 * FileManager表file_manager
 * @author XGB
 */
@Repository
public interface FileManagerMapper {

	/**
	 * 保存
	 * @param bean
	 * @return 返回影响数据库的记录条数
	 * @throws Exception 向上抛出异常
	 */
	@Insert("INSERT INTO file_manager(ID,NAME,DESC_M,GROUP_ID,GROUP_SORT,DISKPATH,DATABASEPATH,URL,TYPEES,MATERIAL_ID,CREATE_TIME,UPDATE_TIME,STATUS) "
			+ "VALUES(#{id},#{name},#{descM},#{groupId},#{groupSort},#{diskPath},#{dataBasePath},#{url},#{typees},#{material_id},#{createTime},#{updateTime},#{status} )")
	int save(FileManager bean) throws Exception;
	
	/**
	 * 按照ID更新
	 * @param bean
	 * @return 返回影响数据库的记录条数
	 * @throws Exception 向上抛出异常
	 */
	@Update("update file_manager set NAME=#{name},DESC_M=#{descM},GROUP_ID=#{groupId},GROUP_SORT=#{groupSort},DISKPATH=#{diskPath},DATABASEPATH=#{dataBasePath},"
			+ "URL=#{url},TYPEES=#{typees},MATERIAL_ID=#{material_id},CREATE_TIME=#{createTime},UPDATE_TIME=#{updateTime},STATUS=#{status} "
			+ "Where ID=#{id} ")
	int updateById(FileManager bean) throws Exception;
 
	/**
	 * 按照material_id更新
	 * @param material_id
	 * @return 返回影响数据库的记录条数
	 * @throws Exception 向上抛出异常
	 */
	@Update("update file_manager set NAME=#{name},DESC_M=#{descM},GROUP_ID=#{groupId},GROUP_SORT=#{groupSort},DISKPATH=#{diskPath},"
			+ "DATABASEPATH=#{dataBasePath},URL=#{url},TYPEES=#{typees},CREATE_TIME=#{createTime},UPDATE_TIME=#{updateTime},STATUS=#{status} "
			+ "Where MATERIAL_ID=#{material_id} ")
	int updateByMaterial_id(@Param("material_id") String material_id) throws Exception;

	
	/**
	 * 按资源分组查询FileManager
	 * @return List<FileManager>
	 * @throws Exception 向上抛出异常
	 */
	@Select("select * from file_manager WHERE GROUP_ID = #{groupId} ORDER BY GROUP_SORT")
	List<FileManager> findListByGroup(@Param("groupId") int groupId) throws Exception;
	
	
	/**
	 * 按资源状态查询FileManager
	 * @return List<FileManager>
	 * @throws Exception 向上抛出异常
	 */
	@Select("select * from file_manager WHERE STATUS = #{status}")
	List<FileManager> findListByStatus(@Param("status") String status) throws Exception;
	
	
	
	/**
	 * 按照material_id查询
	 * @param material_id
	 * @return FileManager
	 * @throws Exception 向上抛出异常
	 */
	@Select("select * from file_manager where MATERIAL_ID = #{material_id} ")
	FileManager findByMaterial_id(@Param("material_id") String material_id) throws Exception;
	
	
	/**
	 * 按照id查询
	 * @param id
	 * @return FileManager
	 * @throws Exception 向上抛出异常
	 */
	@Select("select * from file_manager where ID = #{id} ")
	FileManager findById(@Param("id") String id) throws Exception;
	

	/**
	 * 按照material_id删除
	 * @param material_id
	 * @return 影响数据库的记录条数
	 * @throws Exception 向上抛出异常
	 */
	@Delete("delete from file_manager where MATERIAL_ID=#{material_id} ")
	int deleteByMaterial_id(@Param("material_id") String material_id) throws Exception;
	
}
