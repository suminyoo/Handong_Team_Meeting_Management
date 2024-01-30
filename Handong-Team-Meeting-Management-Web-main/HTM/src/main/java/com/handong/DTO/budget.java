package com.handong.DTO;

import java.sql.Date;

public class budget {
	private int id;
	private int team_id;
	private String description;
	private int cost;
	private int week;
	private Date reg_date;
	
	@Override
	public String toString() {
		return "budget [id=" + id + ", team_id=" + team_id + ", description=" + description + ", cost=" + cost
				+ ", week=" + week + ", reg_date=" + reg_date + "]";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getWeek() {
		return week;
	}
	public void setWeek(int week) {
		this.week = week;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

}
