package com.gp.jdoexam;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;

@PersistenceCapable
public class ExGetSet {
	
@Persistent
    String fullname ; 

@Persistent
	String age ;

@Persistent
	String email;

@Persistent
	String salary ; 

public ExGetSet( String fullname ,	String age,String email ,String salary)
 {
	this.fullname=fullname;
	this.age=age;
	this.email=email;
	this.salary=salary;
}

	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	
}
