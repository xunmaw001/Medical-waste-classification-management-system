package com.entity.vo;

import com.entity.LajifenleiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 垃圾分类
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-05-06 11:12:57
 */
public class LajifenleiVO  implements Serializable {
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
