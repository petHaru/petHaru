package com.petharu.web.entity;

public class Schedule {
	private int id;
	private int memberId;
	private String title;
	private String content;
	private int scheduleTypeId;
	private String dateTime;
	
	public Schedule() {	
	}

	public Schedule(int id, int memberId, String title, String content, String scheduleTypeName, String dateTime) {
		super();
		this.id = id;
		this.memberId = memberId;
		this.title = title;
		this.content = content;
		this.scheduleTypeId = scheduleTypeId;
		this.dateTime = dateTime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
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

	

	public int getScheduleTypeId() {
		return scheduleTypeId;
	}

	public void setScheduleTypeId(int scheduleTypeId) {
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