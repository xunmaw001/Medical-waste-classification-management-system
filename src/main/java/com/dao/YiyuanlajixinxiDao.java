package com.dao;

import com.entity.YiyuanlajixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YiyuanlajixinxiVO;
import com.entity.view.YiyuanlajixinxiView;


/**
 * 医院垃圾信息
 * 
 * @author 
 * @email 
 * @date 2023-05-06 11:12:57
 */
public interface YiyuanlajixinxiDao extends BaseMapper<YiyuanlajixinxiEntity> {
	
	List<YiyuanlajixinxiVO> selectListVO(@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);
	
	YiyuanlajixinxiVO selectVO(@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);
	
	List<YiyuanlajixinxiView> selectListView(@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);

	List<YiyuanlajixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);
	
	YiyuanlajixinxiView selectView(@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params")Map<String, Object> params,@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<YiyuanlajixinxiEntity> wrapper);



}
