package com.petharu.web.service;


import java.util.List;

import com.petharu.web.entity.Schedule;

public interface ScheduleService {
	List<Schedule> getList(String month, int memberId);
	
	int insert(Schedule schedule);
	int update(Schedule schedule);
	int delete(int id);

	Schedule get(int id);
}
