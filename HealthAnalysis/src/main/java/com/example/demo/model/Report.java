package com.example.demo.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="report")
public class Report {
	
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private int idreport;
  
  private String name;
  private int age;
  private int coin;
  private String comment;
  private String date;
  
  

public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public int getIdreport() {
	return idreport;
}
public void setIdreport(int idreport) {
	this.idreport = idreport;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public int getCoin() {
	return coin;
}
public void setCoin(int coin) {
	this.coin = coin;
}
public String getComment() {
	return comment;
}
public void setComment(String comment) {
	this.comment = comment;
}
  
  
  
}
