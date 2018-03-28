package cn.lynu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.lynu.mapper.ZqjcMapper;
import cn.lynu.model.Zqjc;

@Service
public class ZqjcService {
	
	@Autowired
	private ZqjcMapper zqjcMapper;
	
	@Transactional(propagation=Propagation.REQUIRED)
	public boolean insertSelective(Zqjc zqjc) {
		if(zqjcMapper.insertSelective(zqjc)>0){
			return true;
		}
		return false;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Zqjc getzqjcByStudentId(String studentId) {
		return zqjcMapper.getzqjcByStudentId(studentId);
	}

}
