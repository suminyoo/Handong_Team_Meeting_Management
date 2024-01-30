package com.handong.DTO;

public class team_meeting {
	private int id;
	private int week;
	private int family_id;
	private int team_id;
	private String description;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getWeek() {
		return week;
	}
	public void setWeek(int week) {
		this.week = week;
	}
	public int getFamily_id() {
		return family_id;
	}
	public void setFamily_id(int family_id) {
		this.family_id = family_id;
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
	@Override
	public String toString() {
		return "team_meeting [id=" + id + ", week=" + week + ", family_id=" + family_id + ", team_id=" + team_id
				+ ", description=" + description + "]";
	}
}
