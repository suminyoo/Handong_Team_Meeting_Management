package com.handong.DAO;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.handong.DTO.*;




@Repository
public class calendarDAO<description, title> {
	@Autowired
	SqlSession sqlSession;
	
	private static String namespace = "com.handong.htm.mappers.home-mapper";
	
	public user userName(int id){
		System.out.print("get user name");
		return sqlSession.selectOne( namespace + ".userName", id);
	}
	
	public List<calendar> calendar(int id) {
		System.out.println("get information about notice");
		return sqlSession.selectList( namespace + ".calendar_read", id);
	}
	
	public void insertNotice(int team_id, String description, String title) {
		System.out.println("get information about insert notice");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("team_id", team_id);
		map.put("description", description);
		map.put("title", title);
		sqlSession.insert(namespace + ".calendarForm", map);
	}

}



