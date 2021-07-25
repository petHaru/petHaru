package com.petharu.web.dao;

import java.util.List;

import com.petharu.web.entity.Schedule;

public interface ScheduleDao {
	int insert(Schedule schedule);
	int update(Schedule schedule);
	int delete(int id);
	List<Schedule> getList(String month, int memberId);
}
