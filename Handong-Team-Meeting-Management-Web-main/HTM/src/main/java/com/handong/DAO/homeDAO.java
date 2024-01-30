package com.handong.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.handong.DTO.announcements;
import com.handong.DTO.calendar;
import com.handong.DTO.login;
import com.handong.DTO.rc;
import com.handong.DTO.user;

@Repository
public class homeDAO {
	@Autowired
	SqlSession sqlSession;
	
	private static String namespace = "com.handong.htm.mappers.home-mapper";
	
	public List<rc> test(){
		System.out.print("dao Test");
		return sqlSession.selectList( namespace + ".tests");
	}
	
	public void regist(user u) {
		System.out.println("regist dao");
		sqlSession.insert(namespace + ".regist", u);
	}

	public user login(login log) {
		System.out.println("login dao"+log.getUsername()+" "+log.getPassword());
		return sqlSession.selectOne(namespace + ".login", log);
	}

	public List<announcements> mainAnnounce(int team_id){
		System.out.println("mainAnnounce dao");
		return sqlSession.selectList(namespace + ".mainAnnounce", team_id);
	}
	
	public List<calendar> mainCalendar(int team_id){
		System.out.println("mainCalendar dao");
		return sqlSession.selectList(namespace + ".mainCalendar", team_id);
	}
	
	public List<Object> mainUser(int team_id){
		System.out.println("mainUser dao");
		return sqlSession.selectList(namespace + ".mainUser", team_id);
	}

}
