package com.handong.DTO;

public class professor {
	private int id;
	private String name;
	private String phone_number;
	private String major;
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
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	@Override
	public String toString() {
		return "professor [id=" + id + ", name=" + name + ", phone_number=" + phone_number + ", major=" + major + "]";
	}

}
