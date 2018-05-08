package com.wisdom.travel.service.impl;

import org.springframework.stereotype.Service;

import com.wisdom.travel.service.FileService;
import com.wisdom.travel.tools.ToolsImage;

@Service("fileService")
public class FileManagerServiceImpl implements FileService{
	
	@Override
	public void deleteFile(String dispath) throws Exception {
		if(dispath != null) {
			if(!"".equals(dispath)) {
				ToolsImage.DelFileDispath(dispath);
			}
			
		}
	}
	


}
