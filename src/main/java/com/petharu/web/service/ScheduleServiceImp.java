package com.petharu.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petharu.web.dao.mybatis.MyBatisScheduleDao;
import com.petharu.web.entity.Schedule;

@Service
public class ScheduleServiceImp implements ScheduleService {
	
	@Autowired
	private MyBatisScheduleDao dao;

	@Override
	public int insert(Schedule schedule) {
		// TODO Auto-generated method stub
		return dao.insert(schedule);
	}

	@Override
	public int update(Schedule schedule) {
		// TODO Auto-generated method stub
		return dao.update(schedule);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public List<Schedule> getList(String month, int memberId) {
		// TODO Auto-generated method stub
		return dao.getList(month,memberId );
	}
	
	@Override
	public Schedule get(int id) {
		// TODO Auto-generated method stub
		return dao.get(id);
	}
}
