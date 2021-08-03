package com.petharu.web.dto;

public class WeightStats {
	private String measureDate;
	private int week;
	private float kg;
	private float avg;
	
	public WeightStats() {
		// TODO Auto-generated constructor stub
	}

	public String getMeasureDate() {
		return measureDate;
	}

	public void setMeasureDate(String measureDate) {
		this.measureDate = measureDate;
	}

	public int getWeek() {
		return week;
	}

	public void setWeek(int week) {
		this.week = week;
	}

	public float getKg() {
		return kg;
	}

	public void setKg(float kg) {
		this.kg = kg;
	}

	public float getAvg() {
		return avg;
	}

	public void setAvg(float avg) {
		this.avg = avg;
	}

	@Override
	public String toString() {
		return "WeightStats [measureDate=" + measureDate + ", week=" + week + ", kg=" + kg + ", avg=" + avg + "]";
	}
	
	
	
	
}
