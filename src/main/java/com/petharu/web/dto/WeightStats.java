package com.petharu.web.dto;

public class WeightStats {
	private String measureDate;
	private int week;
	private float avg;
	
	public WeightStats() {
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

	public float getAvg() {
		return avg;
	}

	public void setAvg(float avg) {
		this.avg = avg;
	}

	@Override
	public String toString() {
		return "WeightStats [measureDate=" + measureDate + ", week=" + week + ", avg=" + avg + "]";
	}
	
	
	
	
}
