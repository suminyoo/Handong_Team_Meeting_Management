package com.handong.DTO;
 
public class announcements {
	private int id;
	private int team_id;
	private String title;
	private String description;
	
	@Override
	public String toString() {
		return "attendance [id=" + id + ", team_id=" + team_id + ", title=" + title + ", description=" + description + "]";
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
