package com.example.demo.repository;


import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
 //User findbyusername(String username);
 //User findbyUser(String username);
	public User findByUsernameAndPassword(String username,String password);
	
	@Modifying
	@Transactional
	@Query("UPDATE User u set u.registeredevent = ?1 where u.username = ?2")
	 public void setUserInfoById(String re,String r1);
	//public User findRole(String username);
	
	@Modifying
	@Transactional	
	@Query("Update User u set u.coin=?1 where u.username=?2")
	public void setUserCoinById(int r1,String r2);
	
	@Modifying
	@Transactional
	@Query("UPDATE User u set u.firstname=?1, u.lastname=?2, u.age=?3, u.email=?4 ,u.password=?5 where u.username = ?6")
	 public void setUserInfoByUsername(String re,String r1,int r3,String r4,String r5,String r6);
	
	
	public User findByUsername(String username);
}
