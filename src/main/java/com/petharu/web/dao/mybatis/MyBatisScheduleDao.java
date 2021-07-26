package com.petharu.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.petharu.web.dao.PetDao;
import com.petharu.web.dao.ScheduleDao;
import com.petharu.web.entity.Schedule;

@Repository
public class MyBatisScheduleDao implements ScheduleDao {

	private SqlSession sqlSession;
	private ScheduleDao scheduleMapper;
	
	@Autowired
	public MyBatisScheduleDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		scheduleMapper = sqlSession.getMapper(ScheduleDao.class);
	}
	
	@Override
	public int insert(Schedule schedule) {
		// TODO Auto-generated method stub
		return scheduleMapper.insert(schedule);
	}

	@Override
	public int update(Schedule schedule) {
		// TODO Auto-generated method stub
		return scheduleMapper.update(schedule);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return scheduleMapper.delete(id);
	}

	public List<Schedule> getList(String month, int memberId) {
		// TODO Auto-generated method stub
		return scheduleMapper.getList(month,memberId);
	}

	public Schedule get(int id) {
		// TODO Auto-generated method stub
		return scheduleMapper.get(id);
	}

}
