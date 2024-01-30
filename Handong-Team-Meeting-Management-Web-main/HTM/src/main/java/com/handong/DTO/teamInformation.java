package com.handong.DTO;

public class teamInformation {
	private String teamName;
	private String profName;
	private String rcName;
	private int budget;
	private String place;
	private int time;
	 
	@Override
	public String toString() {
		return "teamInformation [" + ", teamName=" + teamName + ", profName=" + profName + ", rcName=" + rcName + ", "
				+ "budget=" + budget + "place=" + place + "time=" + time + "]";
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getProfName() {
		return profName;
	}

	public void setProfName(String profName) {
		this.profName = profName;
	}

	public String getRcName() {
		return rcName;
	}

	public void setRcName(String rcName) {
		this.rcName = rcName;
	}

	public int getBudget() {
		return budget;
	}

	public void setBudget(int budget) {
		this.budget = budget;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}
	
	
}
