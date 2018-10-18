package com.example.demo.controller;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

//import com.example.demo.Calories;
//import org.springframework.security.core.context.SecurityContextHolder;
import com.example.demo.model.Event;
import com.example.demo.model.Exercise;
import com.example.demo.model.Report;
import com.example.demo.model.User;
import com.example.demo.repository.EventRepository;
import com.example.demo.repository.ExerciseRepository;
import com.example.demo.repository.ReportRepo;
import com.example.demo.repository.UserRepository;
import com.example.demo.services.EventService;
import com.example.demo.services.UserService;


@Controller
public class TrainerController {
	@Autowired
	private EventService eventService;
	
	
	@Autowired
	private EventRepository er;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ReportRepo rrepo;
	
	@Autowired
	private UserRepository ur;
	
	@Autowired
	private ExerciseRepository exrepo;
		
	User u9=new User();

		@RequestMapping("/events")
	public String Welcome1(HttpServletRequest request)
	{request.setAttribute("mode","MODE_HOME");
		return "trainer";
	}
		
		
		@RequestMapping(method = RequestMethod.POST,value="/eventregister1")
		public String register(HttpServletRequest request)
		{
	request.setAttribute("mode","TRAIN_REGISTER");
		return "trainer";
		}	
		
		@PostMapping("/save-events")
		public String regUser(@ModelAttribute Event event,BindingResult bindingResult,HttpServletRequest request) {
			
		//	Authentication auth
			// org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		      //String name = auth.getName();
		      //get logged in username
		 //     System.out.println("USERRRRRRRr"+name);
			
			eventService.saveMyEvent(event);
		request.setAttribute("mode", "TRAIN_REGISTER");
		
		//Principal principal=request.getUserPrincipal() ;
//		String name=null;
//		String name =principal.getName();
//		System.out.println("#######################"+principal.getName());
			return "trainer";
			
		}	
//		@GetMapping("/show-user123")
//		public String showAllUser(HttpServletRequest request) {
//		request.setAttribute("users",userService.showAllUsers());
//		request.setAttribute("mode","ALL_USERS");
//			return "homepage3";
//		}
	//
//		@RequestMapping("/delete-user")
//		public String deleteUser(@RequestParam int id,HttpServletRequest request ) {
//			userService.deleteMyuser(id);
//			request.setAttribute("users",userService.showAllUsers());
//			request.setAttribute("mode","ALL_USERS");
//			return "homepage";
//		}
	//
//		@RequestMapping("/edit-user")
//		public String editUser(@RequestParam int id,HttpServletRequest request)  {
//			request.setAttribute("user",userService.editUser(id));
//			request.setAttribute("mode","MODE_UPDATE");
//			return "homepage3";
//		}
//			
			
//			public String showAllEvents(HttpServletRequest request) {
//			request.setAttribute("events",eventService.showAllEvents());
//				request.setAttribute("mode","ALL_USERS");
//				return "homepage";
//			}
	//	
		@RequestMapping("/delete-user1")
		public String deleteUser(@RequestParam int id,HttpServletRequest request ) {
			userService.deleteMyuser(id);
			request.setAttribute("users",userService.showAllUsers());
			request.setAttribute("mode","ALL_USERS");
			return "homepage3";
		}
		
		
		
	@RequestMapping("/show-event")
		public String showAllEve(HttpServletRequest request) {
			request.setAttribute("events",eventService.showAllEvents());
			request.setAttribute("mode","ALL_EVENTS");
			return "trainer2";
		}
	
	@RequestMapping("/coins")
	public String showAll(HttpServletRequest request) {
		request.setAttribute("events",eventService.showAllEvents());
		request.setAttribute("mode","ALL_USERS2");
		return "trainer4";
	}
	
	@RequestMapping("/cc")
	public ModelAndView cc(@ModelAttribute User user,HttpServletRequest request,@RequestParam("weight") String weight) throws ParseException
	{
		
		 List<Exercise> e1= new ArrayList<Exercise>();
	   System.out.println("age is "+u9.getAge()+"wight is" + weight);
	    for(Exercise ex :exrepo.findByUname(u9.getUsername())) {
			e1.add(ex);
		}
	    int c=e1.size();
	    System.out.println("u9 is" + u9.getUsername()+"size is "+c);
	    float sum=0;
	   
	    //StringBuffer s1=new StringBuffer();
	    StringBuffer[] s=new StringBuffer[c];
	    StringBuffer[] s5=new StringBuffer[c];
	    String[] s3=new String[c];
	    String[] s7=new String[c];
	    for (int i=0;i<c;i++)
	    {
	    	 StringBuffer s1=new StringBuffer("text");
	    	s[i]=s1.append(Integer.toString(i));
	    	s3[i]=s1.toString();
	    	
	    	StringBuffer s6=new StringBuffer("calo");
	    	s5[i]=s6.append(Integer.toString(i));
	    	s7[i]=s6.toString();
	    	
	    }
	 
	    
	   // System.out.println("see"+s.append(Integer.toString(0)));
	    for(int i= 0;i<c;i++)
	    {
	    	
	    	System.out.println(Integer.parseInt(request.getParameter(s7[i])) +"     " + Integer.parseInt(request.getParameter(s3[i])));
	 	sum=sum +(Float.parseFloat(request.getParameter(s3[i]))*Float.parseFloat(request.getParameter(s7[i]))*Float.parseFloat(weight));
	    	}
		System.out.println("value is "+sum);
		sum=sum/100000;
		if((int)sum==0)
		{
			sum=1;
		}
		System.out.println("user coin "+u9.getCoin());
		u9.setCoins((u9.getCoin()+(int)sum));
		System.out.println("user coin after update "+u9.getCoin());
		
		ur.setUserCoinById(u9.getCoin(), u9.getUsername());
		
	  
		Report r= new Report();
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
		Date date = new Date();
		
		System.out.println(formatter.format(date));
		r.setDate(formatter.format(date));
		r.setAge(u9.getAge());
		r.setCoin(u9.getCoin());
		r.setComment("need to perform well");
		r.setName(u9.getUsername());
		rrepo.save(r);
		
		List<Report> r1= new ArrayList<Report>();
		   
	    for(Report r2 :rrepo.findByName(u9.getUsername())) {
			r1.add(r2);
		}
	   	 
	    ModelAndView m=new ModelAndView();
	    m.addObject("reports", r1);
	    m.setViewName("down");
		return m;
	}
	
	@RequestMapping("/Calory123")
	public ModelAndView give(@RequestParam String username,@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest request)
	{
		
		 List<Exercise> e1= new ArrayList<Exercise>();
		    ModelAndView mv=new ModelAndView();
		    for(Exercise ex :exrepo.findByUname(username)) {
				e1.add(ex);
			}
		   mv.addObject("exer", e1);
		   mv.addObject("u1", username);
		   u9=userService.findByusername(username);
		   mv.setViewName("trainer6");
			return mv;
		
	}
	
	
	@RequestMapping("/delete-events123")

	public String deleteMyevent1(@RequestParam("eventid") int eventid,HttpServletRequest request ) {

	              Event e = new Event();
System.out.println("evet id"+eventid);
	              e=er.findByEventid(eventid);
	              Event r=er.findByEventid(eventid);
	              if(r.getEnrolluser()==null)
	              {
	            	  
	              }
	              else {
	              System.out.println("sadasd"+r.getCoin());

	              String y=r.getEnrolluser();

	              System.out.println("Enrolled"+r.getEnrolluser());

	              String[] splitted=y.split("/");

	             

	              for(int i=0;i<splitted.length;i++) {
System.out.println("jhasjkdhsa"+splitted[i]);
	                           User u=ur.findByUsername(splitted[i]);

	                           System.out.println("coin"+u.getCoin());

	                           int coin=u.getCoin();

	                          

	                           String coin2=e.getCoin();

	                           int coin3=coin+(Integer.parseInt(coin2));

	                           System.out.println("coin ki maa ki "+coin3);

	                           System.out.println("get username"+u.getUsername());

	                           u.setCoins(coin3);

	              ur.setUserCoinById(coin3,u.getUsername());

	                          

	              }

	              }

	 

	              eventService.deleteMyevent(eventid);

	              request.setAttribute("events",eventService.showAllEvents());

	              request.setAttribute("mode","ALL_EVENTS");

	              return "trainer2";

	}
	
	
	
	@RequestMapping("/end-events123")
	public String endMyevent1(@RequestParam int eventid,HttpServletRequest request ) {
		eventService.deleteMyevent(eventid);
		request.setAttribute("events",eventService.showAllEvents());
		request.setAttribute("mode","ALL_EVENTS");
		return "trainer2";
	}
	
	@PostMapping("/Calories")
	public String registerUser(@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest request,@RequestParam Integer wl,
			@RequestParam Integer yoga,
			@RequestParam Integer ell,
			@RequestParam Integer cyc,
			@RequestParam Integer wal,
			@RequestParam Integer jog,
			@RequestParam Integer run,
			@RequestParam Integer swim,
			@RequestParam String username
			) {
		User user2 = new User(); 
		user2=userService.findByusername(user.getUsername());
	    System.out.print("##########3asdasdasdasdsad33"+user.getUsername());	
		 if(userService.findByusername(user.getUsername())!=null) {
		    System.out.print("##########ameyyyyyyy3"+user.getUsername()); }
//		String PAssword=user.getPassword();
//		String usernamee=user.getUsername();
//		11111111111
	//	User user3=userService.findByUsernameAndPassword(usernamee, PAssword);
		    System.out.print("##########3asdasdasdasdsad33"+username); 
		    int r=user2.getId();
		    user.setEmail(user2.getEmail());
		    user.setFirstname(user2.getFirstname());
		    user.setLastname(user2.getLastname());
		    user.setPassword(user2.getUsername());
		    user.setRole(user2.getRole());
		    
	//userSe1rvice.saveMyUser(user);
		int Coin;
		int Total_cal_burn;
		Total_cal_burn=(wl+yoga+ell+cyc+wal+jog+run+swim);
	    Coin = (Total_cal_burn)/100;
	    
	    System.out.println("Coinsss"+Coin);
	   user.setCoins(Coin);
	    
	   System.out.print("#########iddddddd"+user2.getId());
	   
  userService.deleteMyuser(r);
  userService.saveMyUser(user);
//	    
	request.setAttribute("mode", "MODE_HOME");
		return "trainer4";
		
	}
	
	
		
}
