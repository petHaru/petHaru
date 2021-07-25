package com.petharu.web.entity;

import java.sql.Time;
import java.util.Date;

public class Weight {
	private int id;
	private int petId;
	private	String measureDate;
	private String measureTime;
	private float kg;
	private String regDate;
	
	public Weight() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPetId() {
		return petId;
	}

	public void setPetId(int petId) {
		this.petId = petId;
	}

	public String getMeasureDate() {
		return measureDate;
	}

	public void setMeasureDate(String measureDate) {
		this.measureDate = measureDate;
	}

	public String getMeasureTime() {
		return measureTime;
	}

	public void setMeasureTime(String measureTime) {
		this.measureTime = measureTime;
	}

	public float getKg() {
		return kg;
	}

	public void setKg(float kg) {
		this.kg = kg;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "Weight [id=" + id + ", petId=" + petId + ", measureDate=" + measureDate + ", measureTime=" + measureTime
				+ ", kg=" + kg + ", regDate=" + regDate + "]";
	}
	
	
	
}
