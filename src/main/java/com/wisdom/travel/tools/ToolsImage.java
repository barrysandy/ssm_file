package com.wisdom.travel.tools;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.geom.RoundRectangle2D;
import java.awt.image.BufferedImage;
import java.io.File;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

    
public class ToolsImage {    
	private static Logger log = LoggerFactory.getLogger(ToolsImage.class);//Test.class是获得Test类
	
	/**
	 * 删除磁盘上的图片
	 * @param root 项目路径
	 * @param imgUrl 数据库保存路径
	 */
    public static void DelFile(String root,String imgUrl) {    
		File file = new File(root , imgUrl);
		if(file.exists()){
			file.delete();
			log.info(">>>**delete file complete!**" + file);
		}else {
			System.out.println(">>>**Not find File **" + root + imgUrl);
		}
    }    
    
    /**
	 * 删除磁盘上的文件
	 * @param dispath 文件在磁盘的路径
	 */
    public static void DelFileDispath(String dispath) {    
		File file = new File(dispath);
		if(file.exists()){
			file.delete();
			log.info(">>>**delete dispath file complete !**" + file);
			System.out.println(">>>**delete dispath file complete !**" + file);
		}else {
			System.out.println(">>>**Not find File **" + dispath);
		}
    }    
    
    /**
     * 图片旋转
     * @param src
     * @param angel
     * @return
     */
    public static BufferedImage Rotate(Image src, int angel) {  
        int src_width = src.getWidth(null);  
        int src_height = src.getHeight(null);  
        // calculate the new image size  
        Rectangle rect_des = CalcRotatedSize(new Rectangle(new Dimension(src_width, src_height)), angel);  
  
        BufferedImage res = null;  
        res = new BufferedImage(rect_des.width, rect_des.height,  
                BufferedImage.TYPE_INT_RGB);  
        Graphics2D g2 = res.createGraphics();  
        // transform  
        g2.translate((rect_des.width - src_width) / 2,(rect_des.height - src_height) / 2);  
        g2.rotate(Math.toRadians(angel), src_width / 2, src_height / 2);  
  
        g2.drawImage(src, null, null);  
        return res;  
    }  
  
    /**
     * 计算图片旋转的大小
     * @param src
     * @param angel
     * @return
     */
    public static Rectangle CalcRotatedSize(Rectangle src, int angel) {  
        // if angel is greater than 90 degree, we need to do some conversion  
        if (angel >= 90) {  
            if(angel / 90 % 2 == 1){  
                int temp = src.height;  
                src.height = src.width;  
                src.width = temp;  
            }  
            angel = angel % 90;  
        }  
  
        double r = Math.sqrt(src.height * src.height + src.width * src.width) / 2;  
        double len = 2 * Math.sin(Math.toRadians(angel) / 2) * r;  
        double angel_alpha = (Math.PI - Math.toRadians(angel)) / 2;  
        double angel_dalta_width = Math.atan((double) src.height / src.width);  
        double angel_dalta_height = Math.atan((double) src.width / src.height);  
  
        int len_dalta_width = (int) (len * Math.cos(Math.PI - angel_alpha  
                - angel_dalta_width));  
        int len_dalta_height = (int) (len * Math.cos(Math.PI - angel_alpha  
                - angel_dalta_height));  
        int des_width = src.width + len_dalta_width * 2;  
        int des_height = src.height + len_dalta_height * 2;  
        return new Rectangle(new Dimension(des_width, des_height));  
    }  
    
    /**
     * 得到图片定位
     * @param orientation
     * @return
     */
    public static int getOrientation(String orientation)  
    {  
        int tag = 0;  
        if ("Top, left side (Horizontal / normal)".equalsIgnoreCase(orientation)) {  
            tag = 1;  
        } else if ("Top, right side (Mirror horizontal)".equalsIgnoreCase(orientation)) {  
            tag = 2;  
        } else if ("Bottom, right side (Rotate 180)".equalsIgnoreCase(orientation)) {  
            tag = 3;  
        } else if ("Bottom, left side (Mirror vertical)".equalsIgnoreCase(orientation)) {  
            tag = 4;  
        } else if ("Left side, top (Mirror horizontal and rotate 270 CW)".equalsIgnoreCase(orientation)) {  
            tag = 5;  
        } else if ("Right side, top (Rotate 90 CW)".equalsIgnoreCase(orientation)) {  
            tag = 6;  
        } else if ("Right side, bottom (Mirror horizontal and rotate 90 CW)".equalsIgnoreCase(orientation)) {  
            tag = 7;  
        } else if ("Left side, bottom (Rotate 270 CW)".equalsIgnoreCase(orientation)) {  
            tag = 8;  
        }  
        return  tag;  
    } 
    
    /** 
     * 生成圆角图标 
     * @param BufferedImage image 
     * @param cornerRadius 圆角半径 
     * @return 
     */  
    public static BufferedImage makeRoundedCorner(BufferedImage image, int cornerRadius) {  
        int w = image.getWidth();  
        int h = image.getHeight();  
        BufferedImage output = new BufferedImage(w, h, BufferedImage.TYPE_INT_ARGB);  
        Graphics2D g2 = output.createGraphics();  
        g2.setComposite(AlphaComposite.Src);  
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);  
        g2.setColor(Color.WHITE);  
        g2.fill(new RoundRectangle2D.Float(0, 0, w, h, cornerRadius, cornerRadius));  
        g2.setComposite(AlphaComposite.SrcAtop);  
        g2.drawImage(image, 0, 0, null);  
        g2.dispose();  
        return output;  
    }  
    
    
    
}  