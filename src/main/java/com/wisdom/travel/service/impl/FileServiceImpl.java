package com.wisdom.travel.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wisdom.travel.entity.FileManager;
import com.wisdom.travel.mapper.FileManagerMapper;
import com.wisdom.travel.service.IFileManagerService;


@Service("fileManagerService")
public class FileServiceImpl implements IFileManagerService{
	
	@Resource
	private FileManagerMapper mapper;

	@Override
	public int save(FileManager bean) throws Exception {
		return mapper.save(bean);
	}

	@Override
	public int updateById(FileManager bean) throws Exception {
		return mapper.updateById(bean);
	}

	@Override
	public int updateByMaterial_id(String material_id) throws Exception {
		return mapper.updateByMaterial_id(material_id);
	}

	@Override
	public List<FileManager> findListByGroup(int groupId) throws Exception {
		return mapper.findListByGroup(groupId);
	}

	@Override
	public List<FileManager> findListByStatus(String status) throws Exception {
		return mapper.findListByStatus(status);
	}

	@Override
	public FileManager findByMaterial_id(String material_id) throws Exception {
		return mapper.findByMaterial_id(material_id);
	}

	@Override
	public FileManager findById(String id) throws Exception {
		return mapper.findById(id);
	}

	@Override
	public int deleteByMaterial_id(String material_id) throws Exception {
		return mapper.deleteByMaterial_id(material_id);
	}


}
