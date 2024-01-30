package com.handong.htm;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.handong.DAO.*;
import com.handong.DTO.*;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	private homeDAO homedao;
	@Autowired
	private teamMembersDAO teamMembersdao;
	@Autowired
	private familyMembersDAO familyMembersdao;
	@Autowired
	private myInfoDAO myInfodao;
	@Autowired
	private accountingDAO accountingdao;
	@Autowired
	private teamDAO teamdao;
	@Autowired
	private announcementsDAO announcmentsdao;
	@Autowired
	private calendarDAO calendardao;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(HttpServletRequest request, Locale locale, Model model) {
		//logger.info("Welcome home! The client locale is {}.", locale);
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView("home");

		/*
		 * int id = (Integer)session.getAttribute("id"); int team_id =
		 * (Integer)session.getAttribute("team_id");
		 */
		
		/*
		 * mav.addObject("announce",homedao.mainAnnounce(team_id));
		 * mav.addObject("cal",homedao.mainCalendar(team_id));
		 * mav.addObject("teamuser",homedao.mainUser(team_id));
		 */

		int id = (Integer)session.getAttribute("id");
		int team_id = (Integer)session.getAttribute("team_id");
		System.out.println(homedao.mainUser(team_id));
		mav.addObject("announce",homedao.mainAnnounce(team_id));
		mav.addObject("cal",homedao.mainCalendar(team_id));
		mav.addObject("teamuser",homedao.mainUser(team_id));

		//Date date = new Date();
		//DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		//String formattedDate = dateFormat.format(date);
		
		//model.addAttribute("serverTime", formattedDate );
		
		
		
		
		return mav;
	}
	
	@RequestMapping(value = "/teamMembers", method = RequestMethod.GET)
	public ModelAndView teamMembers(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("teamMembers");
		
		HttpSession session = request.getSession();
		
		int id = (Integer)session.getAttribute("id");
		
		System.out.println("userName to teamMembers");
		mav.addObject("user",teamMembersdao.userName(id));
		
		System.out.println("teamMember to teamMembers");
		mav.addObject("member",teamMembersdao.teamMember(id));
		return mav;
	}
	
	@RequestMapping(value = "/familyMembers", method = RequestMethod.GET)
	public ModelAndView familyMembers(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("familyMembers");
		
		HttpSession session = request.getSession();
		
		int id = (Integer)session.getAttribute("id");
		
		System.out.println("userName to familyMembers");
		mav.addObject("user",familyMembersdao.userName(id));
		
		System.out.println("faimilyMember to familyMembers");
		mav.addObject("familyName",familyMembersdao.familyName(id));
		
		System.out.println("faimilyMember[0] to familyMembers");
		mav.addObject("familyMembers0",familyMembersdao.familyMembers0());
		System.out.println("faimilyMember[1] to familyMembers");
		mav.addObject("familyMembers1",familyMembersdao.familyMembers1());
		System.out.println("faimilyMember[2] to familyMembers");
		mav.addObject("familyMembers2",familyMembersdao.familyMembers2());
		System.out.println("faimilyMember[3] to familyMembers");
		mav.addObject("familyMembers3",familyMembersdao.familyMembers3());
		System.out.println("faimilyMember[4] to familyMembers");
		mav.addObject("familyMembers4",familyMembersdao.familyMembers4());
		System.out.println("faimilyMember[5] to familyMembers");
		mav.addObject("familyMembers5",familyMembersdao.familyMembers5());
		
		return mav;
	}
	
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET)
	public ModelAndView myInfo(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("myInfo");
		
		HttpSession session = request.getSession();
		
		int id = (Integer)session.getAttribute("id");
		
		mav.addObject("user", myInfodao.userName(id));
		System.out.println("attendance to myInfo");
		mav.addObject("position", myInfodao.positionName(id));
		System.out.println("attendance to myInfo");
		mav.addObject("attendance", myInfodao.attendance(id));
		System.out.println("attendance : " + id + myInfodao.attendance(id));

		return mav;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView Login() {
		
		
		ModelAndView mav = new ModelAndView("login");
		
		return mav;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView Register() {
		
		
		ModelAndView mav = new ModelAndView("register");

		return mav;
	}
	@RequestMapping(value = "/login/submit", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, RedirectAttributes redirectAttr) {
		System.out.println("<login> controller");
		
		HttpSession session = request.getSession();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		login log = new login();
		log.setPassword(password);
		log.setUsername(username);
		
		user loginuser = new user();
		
		loginuser = homedao.login(log);
		System.out.println("LOGIN Result is "+loginuser);
		
		if(loginuser == null) {
			session.setAttribute("none", "none");
			System.out.println("NONE");
		}else {
			session.setAttribute("none", "SUCCESS");
			session.setAttribute("id", loginuser.getId());
			session.setAttribute("email", loginuser.getEmail());
			session.setAttribute("name", loginuser.getName());
			session.setAttribute("student_id", loginuser.getStudent_id());
			session.setAttribute("is_admin", loginuser.getIs_admin());
			session.setAttribute("phone_number", loginuser.getPhone_number());
			session.setAttribute("family_id", loginuser.getFamily_id());
			session.setAttribute("birth", loginuser.getBirth());
			session.setAttribute("semester", loginuser.getSemester());
			session.setAttribute("is_in", loginuser.getIs_in());
			session.setAttribute("team_id", loginuser.getIs_in());
			session.setAttribute("rc", loginuser.getIs_in());
			
			System.out.println("SUCCESS");
		}
		
	 	System.out.println("<login> controller end");
	 	ModelAndView mav = new ModelAndView("redirect:/home");
		
		return mav;
	}
	
	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	public ModelAndView submitForm(HttpServletRequest request, RedirectAttributes redirectAttr) {
		System.out.println("<submitForm> controller");
		System.out.println(request.getParameter("password"));
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		int studentid = Integer.parseInt(request.getParameter("studentid"));
		String phone = request.getParameter("phone");
		int month = Integer.parseInt(request.getParameter("month"));
		int day = Integer.parseInt(request.getParameter("day"));
		int semester = Integer.parseInt(request.getParameter("semester"));
		int professor = Integer.parseInt(request.getParameter("professor"));
		int family = Integer.parseInt(request.getParameter("family"));
		user registUser = new user();
		
		registUser.setEmail(email);
		registUser.setPassword(password);
		registUser.setName(username);
		registUser.setStudent_id(studentid);
		registUser.setPhone_number(phone);
		registUser.setBirth(month*100+day);
		registUser.setSemester(semester);
		registUser.setSemester(family);
		homedao.regist(registUser);
		
	 	System.out.println("<submitForm> controller end");
	 	ModelAndView mav = new ModelAndView("redirect:/");
		
		return mav;
	}

	@RequestMapping(value = "/announcements", method = RequestMethod.GET)
	public ModelAndView Announcements(HttpServletRequest request) {
		
		
		ModelAndView mav = new ModelAndView("announcements");
		
		HttpSession session = request.getSession();
		
		int team_id = (Integer)session.getAttribute("team_id");
				
		mav.addObject("announcement", announcmentsdao.announcements(team_id));
				
		return mav;
	}
	
	@RequestMapping(value = "/team", method = RequestMethod.GET)
	public ModelAndView Team(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("team");
		
		HttpSession session = request.getSession();
		
		int id = (Integer)session.getAttribute("id");
		
		mav.addObject("team", teamdao.team(id));
		System.out.println("team" + teamdao.team(id));
		
		return mav;
	}
	
	
	@RequestMapping(value = "/attendance", method = RequestMethod.GET)
	public ModelAndView Attendance(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("attendance");

	      HttpSession session = request.getSession();
	      
	      int id = (Integer)session.getAttribute("team_id");
	      
	      
	      System.out.println("attendance to attendance");
	      
	      mav.addObject("attendance", myInfodao.multiAttendance(id));
	      System.out.println("attendance : " + id + myInfodao.attendance(id));
	      
	      return mav;

	}

	
	@RequestMapping(value = "/accounting", method = RequestMethod.GET)
	public ModelAndView accounting(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("accounting");
		
		HttpSession session = request.getSession();
		
		int team_id = (Integer)session.getAttribute("team_id");
		
		System.out.println("budget"+accountingdao.cost(team_id));
		
		mav.addObject("budget", accountingdao.cost(team_id));
		

	 	
		return mav;
	

	}
	
	@RequestMapping(value = "/accountingForm", method = RequestMethod.POST)
	public ModelAndView insertBudget(HttpServletRequest request, RedirectAttributes redirectAttr) {
		
		System.out.println("accountingForm 도착");
		
		HttpSession session = request.getSession();
		
		int team_id = (Integer)session.getAttribute("team_id");		
		String description = request.getParameter("description");
		int cost = Integer.parseInt(request.getParameter("cost"));
		int week = Integer.parseInt(request.getParameter("week"));
		
		accountingdao.insertCost(team_id, cost, description, week);
		
		
		ModelAndView mav = new ModelAndView("redirect:/accounting");
		return mav;
	

	}
	
	@RequestMapping(value = "/announceForm", method = RequestMethod.POST)
	public ModelAndView announceForm(HttpServletRequest request, RedirectAttributes redirectAttr) {
		
		System.out.println("announceForm 도착");
		
		HttpSession session = request.getSession();
		
		int team_id = (Integer)session.getAttribute("team_id");		
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		System.out.println(team_id+" "+description+" "+title);
		announcmentsdao.insertForm(team_id, description, title);
		
		
		ModelAndView mav = new ModelAndView("redirect:/");
		return mav;
	

	}
	
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public ModelAndView calendar(HttpServletRequest request, RedirectAttributes redirectAttr) {
		
		
		ModelAndView mav = new ModelAndView("calendar");
		
		HttpSession session = request.getSession();
		
		int team_id = (Integer)session.getAttribute("team_id");
		int id = (Integer)session.getAttribute("id");
		
		System.out.println("userName to calendar");
		mav.addObject("user",calendardao.userName(id));
		
		List<calendar> calendar = calendardao.calendar(team_id);
		System.out.println("calendar"+ calendar);
	
		mav.addObject("calendar", calendar);
		
		return mav;
	
	}
	
	@RequestMapping(value = "/calendarForm", method = RequestMethod.POST)
	public ModelAndView insertNotice(HttpServletRequest request, RedirectAttributes redirectAttr) {
		
		System.out.println("calendargForm 도착");
		
		HttpSession session = request.getSession();
		
		int team_id = (Integer)session.getAttribute("team_id");		
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		
		calendardao.insertNotice(team_id, description, title);
		
		
		ModelAndView mav = new ModelAndView("redirect:/");
		System.out.println("calendar redirect");
		return mav;
	

	}
	
	

	


 	
}
