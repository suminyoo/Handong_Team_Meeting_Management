package com.handong.DTO;

public class family {
	private int id;
	private String name;
	private int team_id;
	private int leader_id;
	private String meal_day;
	@Override
	public String toString() {
		return "family [id=" + id + ", name=" + name + ", team_id=" + team_id + ", leader_id=" + leader_id
				+ ", meal_day=" + meal_day + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public int getLeader_id() {
		return leader_id;
	}
	public void setLeader_id(int leader_id) {
		this.leader_id = leader_id;
	}
	public String getMeal_day() {
		return meal_day;
	}
	public void setMeal_day(String meal_day) {
		this.meal_day = meal_day;
	}
}
