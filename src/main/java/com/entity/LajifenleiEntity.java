package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 垃圾分类
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-05-06 11:12:57
 */
@TableName("lajifenlei")
public class LajifenleiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public LajifenleiEntity() {
		
	}
	
	public LajifenleiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 垃圾分类
	 */
					
	private String lajifenlei;
	
	/**
	 * 处理方式
	 */
					
	private String chulifangshi;
	
	/**
	 * 垃圾说明
	 */
					
	private String lajishuoming;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
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
