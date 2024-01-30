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
public class accountingDAO<cost, description, reg_date> {
	@Autowired
	SqlSession sqlSession;
	
	private static String namespace = "com.handong.htm.mappers.home-mapper";
	

	public List<budget> cost(int id) {
		System.out.println("get information about cost");
		return sqlSession.selectList( namespace + ".accounting_read", id);
	}
	
	public void insertCost(int team_id, int cost, String d, int week) {
		System.out.println("get information about insert cost");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("team_id", team_id);
		map.put("cost", cost);
		map.put("description", d);
		map.put("week", week);
		sqlSession.insert(namespace + ".accounting", map);
	}



	

}



