package com.handong.DTO;

public class positions {
	private int id;
	private String to_do;
	private String job_title;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTo_do() {
		return to_do;
	}
	public void setTo_do(String to_do) {
		this.to_do = to_do;
	}
	public String getJob_title() {
		return job_title;
	}
	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}
	@Override
	public String toString() {
		return "positions [id=" + id + ", to_do=" + to_do + ", job_title=" + job_title + "]";
	}
}
