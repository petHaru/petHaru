package com.petharu.web.entity;

public class Schedule {
	private Integer id;
	private Integer memberId;
	private String title;
	private String content;
	private Integer scheduleTypeId;
	private String dateTime;
	
	public Schedule() {	
	}
	
	

	public Schedule(Integer id, Integer memberId, String title, String content, Integer scheduleTypeId,
			String dateTime) {
		super();
		this.id = id;
		this.memberId = memberId;
		this.title = title;
		this.content = content;
		this.scheduleTypeId = scheduleTypeId;
		this.dateTime = dateTime;
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getScheduleTypeId() {
		return scheduleTypeId;
	}

	public void setScheduleTypeId(Integer scheduleTypeId) {
		this.scheduleTypeId = scheduleTypeId;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	@Override
	public String toString() {
		return "Schedule [id=" + id + ", memberId=" + memberId + ", title=" + title + ", content=" + content
				+ ", scheduleTypeId=" + scheduleTypeId + ", dateTime=" + dateTime + "]";
	}

	
	

}