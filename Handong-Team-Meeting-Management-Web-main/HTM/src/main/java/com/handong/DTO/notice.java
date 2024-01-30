package com.handong.DTO;

public class notice {
	private int id;
	private String description;
	private int team_id;
	private String title;
	
	@Override
	public String toString() {
		return "notice [id=" + id + ", description=" + description + ", team_id=" + team_id + ", title=" + title + "]";
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
