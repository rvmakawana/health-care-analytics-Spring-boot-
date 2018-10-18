package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Event;
import com.example.demo.model.Exercise;
import com.example.demo.model.Report;
import com.example.demo.model.User;
import com.example.demo.repository.ExerciseRepository;
import com.example.demo.repository.ReportRepo;
import com.example.demo.repository.UserRepository;
import com.example.demo.services.Encryption;
import com.example.demo.services.UserService;

//import io.undertow.servlet.spec.HttpServletResponseImpl;


@SessionAttributes("user")
@Controller
public class LoginController {

	@Autowired
private UserService userService;
	
	@Autowired
	private ReportRepo rrepo;
	
	@Autowired
	private ExerciseRepository exrepo;
	
	@Autowired
	private UserRepository usrepo;
	
	@Autowired
	private Encryption enc;

	@RequestMapping("/welcome")
public String Welcome(HttpServletRequest request)
{request.setAttribute("mode","MODE_HOME");
	return "welcomepage2";
}

	@ModelAttribute("user")
	public User setUpUserForm() {
	   return new User();
	}
	
@RequestMapping("/register")
	public String registeration(HttpServletRequest request)
	{
request.setAttribute("mode","MODE_REGISTER");
	return "welcomepage";
	}

//@RequestMapping("/user1")
//public String user1(HttpServletRequest request,@ModelAttribute User user)
//{
//System.out.println("user is from user1"+user.getUsername());
//request.setAttribute("mode","MODE_REGISTER");
//return "user1";
//}

@RequestMapping("/searchuser")
public ModelAndView searchuser(HttpServletRequest request,@ModelAttribute User user)
{
	 List<String> e1= new ArrayList<String>();
	  
	    for(Exercise ex :exrepo.findAll()) {
			e1.add(ex.getUname());
		} 
	    Set<String> s = new LinkedHashSet<>(e1);
	    List<String> e2= new ArrayList<String>(s);
	    List<String> e3= new ArrayList<String>();
	    List<Exercise>  exx=new ArrayList<>();
	 HashMap<String ,List<String>> hm1=new HashMap<String ,List<String>>();  
	 HashMap<String ,String> hm=new HashMap<String ,String>();  
		 for(int i=0;i<e2.size();i++)
		 {
			hm.put(e2.get(i),exrepo.findExercise(e2.get(i)).toString().replaceAll("[\\[\\]]",""));
		 }
	       hm.forEach((key, value)->System.out.println("username name : "
	                + key + "\t\t" + "exercise name: " + value.toString().replaceAll("[\\[\\],]","")));;
      ModelAndView mv= new ModelAndView();
      mv.addObject("hm1",hm);
      mv.setViewName("user6");
		
        		 
	
return mv;
}




@PostMapping("/save-user")

public String registerUser(@ModelAttribute User user2,BindingResult bindingResult,HttpServletRequest request,@RequestParam String radio,String username) throws ServletException {

//if(radio==null) {
//	userService.saveMyUser(user);
//	return "userupdate";
////}
//else {
	
	ModelAndView mv=new ModelAndView();
System.out.println(radio);
User u =new User();
//u=userService.findByusername(username);
			System.out.println("this is user name="+username);
              u.setRole(radio);
     if(userService.findByusername(username)==null) {        
      u.setUsername(username);
            	  String pass=enc.encryption(user2.getPassword());
            	  u.setFirstname(user2.getFirstname());

            	  System.out.print("password"+user2.getPassword());
            	  System.out.println("username"+user2.getUsername());
            	 // user2.setPassword(pass);
            	  u.setPassword(pass);
            	  userService.saveMyUser(u);
                    // user=null;
                  request.setAttribute("mode", "MODE_HOME");
                  System.out.println("success");
                  request.logout();
                  return "welcomepage2";
            	 
            }
              
              else
              {
            	  request.setAttribute("mode", "MODE_REGISTER");
            	  Error e=new Error();////            	  System.out.println("error");
            	  request.setAttribute("error", "Username Already Exist");
            	  mv.setViewName("welcomepage");
           	  return "welcomepage";
              }
}
//             
@PostMapping("/save-user2")

public String registerUser2(@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest request,String username) {

//if(radio==null) {
//	userService.saveMyUser(user);
//	return "userupdate";
////}
//else {
	ModelAndView mv=new ModelAndView();

			System.out.println("this is user name="+username);
              //user.setRole(radio);
             
              userService.findByusername(username);
              
             
            	  String pass=enc.encryption(user.getPassword());

            	  System.out.print("password"+user.getPassword());
            	  user.setPassword(pass);
            	  //userService.saveMyUser(user);
            	  usrepo.setUserInfoByUsername(user.getFirstname(), user.getLastname(),user.getAge() , user.getEmail(), user.getPassword(),user.getUsername());

                  request.setAttribute("mode", "MODE_HOME");
                  System.out.println("success");
                  return "redirect:/user1";
            	 
              
//            	  request.setAttribute("mode", "MODE_REGISTER");
//            	  Error e=new Error();
//            	  System.out.println("error");
//            	  request.setAttribute("error", "Username Already Exist");
            	 // mv.setViewName("welcomepage");
            	 // return "homepage2";
              
}

@GetMapping("/show-users")
public String showAllUser(HttpServletRequest request) {
request.setAttribute("users",userService.showAllUsers());
	request.setAttribute("mode","ALL_USERS");
	return "homepage3";
}

@PostMapping("/save-event2")
public String saveuse2(@ModelAttribute User user) {
	System.out.println("ageee"+user.getAge());
	userService.saveMyUser(user);
	return "userupdate";
}

@GetMapping("/show-user123")
public String showAllUser123(HttpServletRequest request) {
request.setAttribute("users",userService.showAllUsers());
	request.setAttribute("mode","ALL_USERS");
	return "trainer3";
}

@GetMapping("/show-user1234")
public String showAllUser1234(HttpServletRequest request) {
request.setAttribute("users",userService.showAllUsers());
	request.setAttribute("mode","ALL_USERS2");
	return "trainer4";
}

@GetMapping("/show-user12345")
public String showAllUser12345(HttpServletRequest request) {
 
List<User> l= new ArrayList<>();
List<User> l1= new ArrayList<>();
for (User u: userService.showAllUsers())
  { 
       
       l.add(u);
      
 
}
 
for(User u:l)
{
 
System.out.println(u.getUsername()+ u.getRole());
if(u.getRole().equals("trainer"))
{
 
}
else
{
l1.add(u);
}
    
      
}
request.setAttribute("users",l1);
request.setAttribute("mode","ALL_USERS2");
return "trainer5";
}

@RequestMapping("/delete-user")
public String deleteUser(@RequestParam int id,HttpServletRequest request ) {
	userService.deleteMyuser(id);
	request.setAttribute("users",userService.showAllUsers());
	request.setAttribute("mode","ALL_USERS");
	return "homepage3";
}

@RequestMapping("/edit-user")
public String editUser(@RequestParam int id,HttpServletRequest request)  {
	request.setAttribute("user",userService.editUser(id));
	request.setAttribute("mode","MODE_UPDATE");
	return "homepage3";
}
@RequestMapping("/edit-user2")
public String editUser2(@ModelAttribute User user,HttpServletRequest request)  {
	User u1=userService.findByusername(user.getUsername());
	System.out.println("current id"+user.getId());
	System.out.println("current id"+u1.getId());
	request.setAttribute("user",u1);
	request.setAttribute("mode","MODE_UPDATE2");
	return "userupdate";
}

@RequestMapping("/login")
public String login(HttpServletRequest request) {
	request.setAttribute("mode","MODE_LOGIN");
	return "welcomepage";
}

@RequestMapping("/logout")
public String logout(HttpServletRequest request) throws ServletException
{ request.logout();
//request.
return "welcomepage2";

		}

@RequestMapping("/exer")
public String excer(@ModelAttribute User user)
{

	return "userexercise";
}


@RequestMapping("/delex")
public ModelAndView delex(@ModelAttribute User user,@RequestParam int id)
{
    exrepo.delete(id);
    List<Exercise> e1= new ArrayList<Exercise>();
    ModelAndView mv=new ModelAndView();
    for(Exercise ex :exrepo.findByUname(user.getUsername())) {
		e1.add(ex);
	}
   mv.addObject("exer", e1);
   mv.setViewName("myexercise");
	return mv;
	//return "myexercise";
}


@RequestMapping("/showex")
public ModelAndView showAllEx(HttpServletRequest request,@ModelAttribute User user) {
    List<Exercise> e1= new ArrayList<Exercise>();
    ModelAndView mv=new ModelAndView();
    for(Exercise ex :exrepo.findByUname(user.getUsername())) {
		e1.add(ex);
	}
   mv.addObject("exer", e1);
   mv.setViewName("myexercise");
	return mv;
}



@RequestMapping("/exadd")
public String exceradd(@ModelAttribute User user,@RequestParam String exname1)
{
	User u1=userService.findByusername(user.getUsername());
	System.out.println("username from exercise"+u1.getUsername());
	Exercise e1= new Exercise ();
	e1.setExname(exname1);
	e1.setUname(u1.getUsername());
	exrepo.save(e1);
	
	return "userexercise";
}

@RequestMapping("/user1")
public String loginhomrfd(@ModelAttribute("user") User user,HttpServletRequest request) {
	
	User user2=usrepo.findByUsername(user.getUsername());
	request.setAttribute("user", user2);
	if(user2.getCoin()==0 )
	{
		//request.setAttribute("reports", "");
	}
	else {
		
		
		{
	Report r= new Report();
	r.setAge(user2.getAge());
	r.setCoin(user2.getCoin());
	r.setComment("need to perform well");
	r.setName(user2.getUsername());
	rrepo.save(r);
	
	List<Report> r1= new ArrayList<Report>();
	   
    for(Report r2 :rrepo.findByName(user2.getUsername())) {
		r1.add(r2);
		request.setAttribute("reports", r1);
		}
	 }
	}
	return "user1";
}




@RequestMapping ("/login-user")
public String loginUser(@ModelAttribute("user") User user, HttpServletRequest request) {
//System.out.print("userrrrrrrrrrr"+user.getEmail());
	String pass=enc.encryption(user.getPassword());
	System.out.println("new pass"+pass);
if(userService.findByUsernameAndPassword(user.getUsername(), pass)==null) {
request.setAttribute("error", "Invalid Username or Password");
request.setAttribute("mode", "MODE_LOGIN");
return "welcomepage";
 
}
User user2=userService.findByUsernameAndPassword(user.getUsername(), pass);
//User user2=userService.findbyUsername(user.getUsername());
System.out.println(user2.getRole());
//String temp=user2.getRole();
 
user.setUsername(user2.getUsername());
user.setCoins(user2.getCoin());
user.setPassword(user2.getPassword());
if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
if(user2.getRole().equalsIgnoreCase("ADMIN"))
{
return "homepage";

}
else if (user2.getRole().equalsIgnoreCase("user"))
{System.out.println("$$$$$$$$$$$$$$$$");
	
	Report r= new Report();
	r.setAge(user2.getAge());
	r.setCoin(user2.getCoin());
	r.setComment("need to perform well");
	r.setName(user2.getUsername());
	rrepo.save(r);
	
	List<Report> r1= new ArrayList<Report>();
	   
    for(Report r2 :rrepo.findByName(user2.getUsername())) {
		r1.add(r2);
		request.setAttribute("reports", r1);
	}
 System.out.print("########"+user.getUsername());
return "redirect:/user1";
}
else
{
return "trainer";
}
}
else {
request.setAttribute("error", "Invalid Username or Password");
request.setAttribute("mode", "MODE_LOGIN");
return "welcomepage";
 
}
}
}