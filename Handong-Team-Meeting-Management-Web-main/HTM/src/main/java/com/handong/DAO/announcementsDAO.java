package com.handong.DAO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.handong.DTO.user;
import com.handong.DTO.announcements;

@Repository
public class announcementsDAO {
	@Autowired
	SqlSession sqlSession;
	
	private static String namespace = "com.handong.htm.mappers.home-mapper";
	
	public static List<Integer> teamID = new ArrayList<Integer>();
	 
	
	public user userName(int id){
		System.out.print("get user name");
		return sqlSession.selectOne( namespace + ".userName", id);
	}
	
	public List<announcements> announcements(int team_id) {
		System.out.println("get announcements info");
		return sqlSession.selectList( namespace + ".announcements", team_id);
	}

	public void insertForm(int team_id, String description, String title) {
		// TODO Auto-generated method stub
		System.out.println(team_id+" "+description+" "+title);
		System.out.println("get information about insert cost");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("team_id", team_id);
		map.put("description", description);
		map.put("title", title);
		sqlSession.insert(namespace + ".insertForm", map);
	}
}


