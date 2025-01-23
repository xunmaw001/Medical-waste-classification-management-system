package com.entity.model;

import com.entity.LajifenleiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 垃圾分类
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-05-06 11:12:57
 */
public class LajifenleiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 处理方式
	 */
	
	private String chulifangshi;
		
	/**
	 * 垃圾说明
	 */
	
	private String lajishuoming;
				
	
	/**
	 * 设置：处理方式
	 */
	 
	public void setChulifangshi(String chulifangshi) {
		this.chulifangshi = chulifangshi;
	}
	
	/**
	 * 获取：处理方式
	 */
	public String getChulifangshi() {
		return chulifangshi;
	}
				
	
	/**
	 * 设置：垃圾说明
	 */
	 
	public void setLajishuoming(String lajishuoming) {
		this.lajishuoming = lajishuoming;
	}
	
	/**
	 * 获取：垃圾说明
	 */
	public String getLajishuoming() {
		return lajishuoming;
	}
			
}
