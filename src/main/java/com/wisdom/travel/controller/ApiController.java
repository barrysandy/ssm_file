package com.wisdom.travel.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wisdom.travel.set.SetConstants;


@Controller
@RequestMapping("/api")
public class ApiController {
	
	@RequestMapping("")
	public String api(HttpServletRequest req,HttpServletResponse resp){
		req.setAttribute("url", SetConstants.URL);
		return "views/api";
	}
	
	
	@RequestMapping("ueditor")
	public String ueditor(HttpServletRequest req,HttpServletResponse resp){
		req.setAttribute("url", SetConstants.URL);
		return "views/ueditor";
	}
	
}
