package com.handong.DTO;

import java.sql.Date;

import org.springframework.cglib.core.TinyBitSet;

public class user {
	private int id;
	private String email;
	private String name;
	private String password;
	private int student_id;
	private int is_admin;
	private String phone_number;
	private Date reg_date;
	private int position_id;
	private int family_id;
	private int birth;
	private int semester;
	private int is_in;
	private int team_id;
	private int rc;
	
	public int getRc() {
		return rc;
	}
	public void setRc(int rc) {
		this.rc = rc;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getStudent_id() {
		return student_id;
	}
	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}
	public int getIs_admin() {
		return is_admin;
	}
	public void setIs_admin(int is_admin) {
		this.is_admin = is_admin;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public int getPosition_id() {
		return position_id;
	}
	public void setPosition_id(int position_id) {
		this.position_id = position_id;
	}
	public int getFamily_id() {
		return family_id;
	}
	public void setFamily_id(int family_id) {
		this.family_id = family_id;
	}
	public int getBirth() {
		return birth;
	}

	public void setBirth(int i) {
		this.birth = i;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public int getIs_in() {
		return is_in;
	}
	public void setIs_in(int is_in) {
		this.is_in = is_in;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "user [id=" + id + ", email=" + email + ", name=" + name + ", student_id=" + student_id + ", is_admin="
				+ is_admin + ", phone_number=" + phone_number + ", position_id=" + position_id + ", family_id="
				+ family_id + ", birth=" + birth + ", semester=" + semester + ", is_in=" + is_in + ", team_id="
				+ team_id + ", reg_date=" + reg_date + "]";
	}
	
	
}
