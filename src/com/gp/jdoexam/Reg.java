package com.gp.jdoexam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Reg extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
		
		
		String fullname = request.getParameter("fullname");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String salary = request.getParameter("salary");
		System.out.println("fullname:" + fullname + "Age:" + age + "email:" + email + "Salary:" + salary);
	
		ExGetSet obj=new ExGetSet(fullname,age,email,salary);
		
	    PersistenceManager pm = PMF.get().getPersistenceManager();

		try{
			
		 pm.makePersistent(obj);	
		 
		}
		finally{
			
			pm.close();
		}
		
		          
		    out.close();  
		    }  
		 
		
	 
	}
