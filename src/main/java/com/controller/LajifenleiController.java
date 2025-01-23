package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.LajifenleiEntity;
import com.entity.view.LajifenleiView;

import com.service.LajifenleiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 垃圾分类
 * 后端接口
 * @author 
 * @email 
 * @date 2023-05-06 11:12:57
 */
@RestController
@RequestMapping("/lajifenlei")
public class LajifenleiController {
    @Autowired
    private LajifenleiService lajifenleiService;




    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,LajifenleiEntity lajifenlei, 
		HttpServletRequest request){

        EntityWrapper<LajifenleiEntity> ew = new EntityWrapper<LajifenleiEntity>();


		PageUtils page = lajifenleiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, lajifenlei), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,LajifenleiEntity lajifenlei, 
		HttpServletRequest request){
        EntityWrapper<LajifenleiEntity> ew = new EntityWrapper<LajifenleiEntity>();

		PageUtils page = lajifenleiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, lajifenlei), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( LajifenleiEntity lajifenlei){
       	EntityWrapper<LajifenleiEntity> ew = new EntityWrapper<LajifenleiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( lajifenlei, "lajifenlei")); 
        return R.ok().put("data", lajifenleiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(LajifenleiEntity lajifenlei){
        EntityWrapper< LajifenleiEntity> ew = new EntityWrapper< LajifenleiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( lajifenlei, "lajifenlei")); 
		LajifenleiView lajifenleiView =  lajifenleiService.selectView(ew);
		return R.ok("查询垃圾分类成功").put("data", lajifenleiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        LajifenleiEntity lajifenlei = lajifenleiService.selectById(id);
        return R.ok().put("data", lajifenlei);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        LajifenleiEntity lajifenlei = lajifenleiService.selectById(id);
        return R.ok().put("data", lajifenlei);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody LajifenleiEntity lajifenlei, HttpServletRequest request){
    	lajifenlei.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(lajifenlei);

        lajifenleiService.insert(lajifenlei);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody LajifenleiEntity lajifenlei, HttpServletRequest request){
    	lajifenlei.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(lajifenlei);

        lajifenleiService.insert(lajifenlei);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody LajifenleiEntity lajifenlei, HttpServletRequest request){
        //ValidatorUtils.validateEntity(lajifenlei);
        lajifenleiService.updateById(lajifenlei);//全部更新
        return R.ok();
    }

    
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        lajifenleiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	









}
