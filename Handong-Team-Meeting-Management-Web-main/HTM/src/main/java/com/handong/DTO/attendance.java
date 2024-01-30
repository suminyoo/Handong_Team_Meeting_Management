package com.handong.DTO;

import java.sql.Date;

import org.springframework.cglib.core.TinyBitSet;

public class attendance {
   private int id;
   private int user_id;
   private int week;
   private int attend;
   private   int chapel_attend;
   
   @Override
   public String toString() {
      return "attendance [id=" + id + ", user_id=" + user_id + ", week=" + week + ", attend=" + attend + ", reg_date="
            + reg_date + ", chapel_attend=" + chapel_attend + "]";
   }
   
   public int getId() {
      return id;
   }
   public void setId(int id) {
      this.id = id;
   }
   public int getUser_id() {
      return user_id;
   }
   public void setUser_id(int user_id) {
      this.user_id = user_id;
   }
   public int getWeek() {
      return week;
   }
   public void setWeek(int week) {
      this.week = week;
   }
   public int getAttend() {
      return attend;
   }
   public void setAttend(int attend) {
      this.attend = attend;
   }
   public Date getReg_date() {
      return reg_date;
   }
   public void setReg_date(Date reg_date) {
      this.reg_date = reg_date;
   }
   private Date reg_date;
   public int getChapel_attend() {
      return chapel_attend;
   }
   public void setChapel_attend(int chapel_attend) {
      this.chapel_attend = chapel_attend;
   }
}