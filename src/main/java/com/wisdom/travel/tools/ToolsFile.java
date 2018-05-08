package com.wisdom.travel.tools;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class ToolsFile {

    public static void main(String[] args) {

        File file = new File("d:\\test_file.txt");
        ToolsFile.judeFileExists(file);

        File dir = new File("d:\\test_dir");
        ToolsFile.judeDirExists(dir);
    }

    // 判断文件是否存在
    public static void judeFileExists(File file) {
        if (file.exists()) {
            System.out.println("file exists");
        } else {
            System.out.println("file not exists, create it ...");
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }

    // 判断文件夹是否存在
    public static void judeDirExists(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                System.out.println("dir exists");
            } else {
                System.out.println("the same name file exists, can not create dir");
            }
        } else {
            System.out.println("dir not exists, create it ...");
            file.mkdir();
        }

    }

    /**
     * 遍历某个目录下的文件
     * @param strPath
     * @return
     */
    public static List<File> getFileList(String strPath) {
    	List<File> filelist = new ArrayList<File>();
        File dir = new File(strPath);
        File[] files = dir.listFiles(); // 该文件目录下文件全部放入数组
        if (files != null) {
            for (int i = 0; i < files.length; i++) {
                String fileName = files[i].getName();
                if (files[i].isDirectory()) { // 判断是文件还是文件夹
                    getFileList(files[i].getAbsolutePath()); // 获取文件绝对路径
                } else if (fileName.endsWith("avi")) { // 判断文件名是否以.avi结尾
                    String strFileName = files[i].getAbsolutePath();
                    System.out.println("---" + strFileName);
                    filelist.add(files[i]);
                } else {
                    continue;
                }
            }

        }
        return filelist;
    }
    
    
    /**
     * 获取项目某个路径文件夹下的所有文件名称
     * @param req
     * @param filePath 目标文件夹
     * @return 
     */
    public static List<String> getDiskFile(HttpServletRequest req,String filePath){
    	List<String> listimage = new ArrayList<String>();
    	String path = req.getSession().getServletContext().getRealPath(filePath);
    	File file = new File(path);
    	if(file.exists()) {
    		if(file.isDirectory()) {
    			String[] fileList = file.list();
    			for (String filedir : fileList) {
    				String image = filePath + filedir;
    				listimage.add(image);
				}
    		}
    	}
		return listimage;
    }
    
    
}