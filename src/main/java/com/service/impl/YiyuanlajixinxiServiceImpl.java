package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YiyuanlajixinxiDao;
import com.entity.YiyuanlajixinxiEntity;
import com.service.YiyuanlajixinxiService;
import com.entity.vo.YiyuanlajixinxiVO;
import com.entity.view.YiyuanlajixinxiView;

@Service("yiyuanlajixinxiService")
public class YiyuanlajixinxiServiceImpl extends ServiceImpl<YiyuanlajixinxiDao, YiyuanlajixinxiEntity> implements YiyuanlajixinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YiyuanlajixinxiEntity> page = this.selectPage(
                new Query<YiyuanlajixinxiEntity>(params).getPage(),
                new EntityWrapper<YiyuanlajixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YiyuanlajixinxiEntity> wrapper) {
		  Page<YiyuanlajixinxiView> page =new Query<YiyuanlajixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YiyuanlajixinxiVO> selectListVO(Wrapper<YiyuanlajixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YiyuanlajixinxiVO selectVO(Wrapper<YiyuanlajixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YiyuanlajixinxiView> selectListView(Wrapper<YiyuanlajixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YiyuanlajixinxiView selectView(Wrapper<YiyuanlajixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<YiyuanlajixinxiEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<YiyuanlajixinxiEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<YiyuanlajixinxiEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }



}
