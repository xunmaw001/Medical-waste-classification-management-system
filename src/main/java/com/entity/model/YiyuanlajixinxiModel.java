package com.entity.model;

import com.entity.YiyuanlajixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 医院垃圾信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-05-06 11:12:57
 */
public class YiyuanlajixinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 垃圾分类
	 */
	
	private String lajifenlei;
		
	/**
	 * 垃圾说明
	 */
	
	private String lajishuoming;
		
	/**
	 * 处理方式
	 */
	
	private String chulifangshi;
		
	/**
	 * 添加日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date tianjiariqi;
		
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
	/**
	 * 回复内容
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：垃圾分类
	 */
	 
	public void setLajifenlei(String lajifenlei) {
		this.lajifenlei = lajifenlei;
	}
	
	/**
	 * 获取：垃圾分类
	 */
	public String getLajifenlei() {
		return lajifenlei;
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
	 * 设置：添加日期
	 */
	 
	public void setTianjiariqi(Date tianjiariqi) {
		this.tianjiariqi = tianjiariqi;
	}
	
	/**
	 * 获取：添加日期
	 */
	public Date getTianjiariqi() {
		return tianjiariqi;
	}
				
	
	/**
	 * 设置：用户名
	 */
	 
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
				
	
	/**
	 * 设置：回复内容
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：回复内容
	 */
	public String getShhf() {
		return shhf;
	}
			
}
