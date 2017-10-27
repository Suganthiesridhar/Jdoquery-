<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="com.gp.jdoexam.*"%>
<%@ page import="javax.jdo.PersistenceManager"%>
<%@ page import="java.util.List"%>
<%@ page import="javax.jdo.Query"%>
<%@ page import="com.google.appengine.api.datastore.PreparedQuery"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title>Display Persons</title>
   </head>

<body bgcolor="pink">

  <table width="70%" cellpadding="9" cellspacing="4" border="2">
    <tr>
      <th>Fullname</th>
      <th>Email</th>
      <th>Age</th>
      <th>Salary</th>
<!-- onchange='this.form.submit()' -->
<form action="Showpersons.jsp">
<br><br>
  <select name="Salary" > 
    <option>Salary</option>
    <option value="10000">10000</option>
    <option value="15000">15000</option>
    <option value="20000">20000</option>
    <option value="25000">25000</option>
    <option value="30000">30000</option>
  </select>
  
  <select name="Age" > 
    <option>Age</option>
    <option value="21">21</option>
    <option value="22">22</option>
    <option value="23">23</option>
    <option value="24">24</option>
    <option value="25">25</option>
  </select>
  
  <input type=text id=Fullname name=Fullname>
  
  <input  type=submit value=Submit >
  
</form>
</tr>

<%
  System.out.println("Showpersonsjsp running"); //Write stmt to console: 

	  
  PersistenceManager pm = PMF.get().getPersistenceManager();
	Query q = pm.newQuery(ExGetSet.class);
	String age = request.getParameter("Age");
	String salary = request.getParameter("Salary");
	String fullname= request.getParameter("Fullname");
	
  try {
   if (age!=null)  {
  System.out.println("inside of if con for age");//printing to console
  Query q1 = pm.newQuery(ExGetSet.class, "age==Age");
  q1.declareParameters("String Age");
  
  //q.setFilter("salary == value");
  // q.setFilter("salary == value ");
 // q.declareParameters("String value"); //String containing one or more query parameter declarations
//System.out.println(q1.toString());
 
 
 
  
  List<ExGetSet> results = (List<ExGetSet>) q1.execute(age); //An ordered collection 

   if (!results.isEmpty()) {
     for (ExGetSet print : results) {
       %>
          <tr>
          <td><%=print.getFullname()%></td>
          <td><%=print.getEmail()%></td>
          <td><%=print.getAge()%></td>
          <td><%=print.getSalary()%></td>
        </tr>
      <%
   }
} 
  
} 
   if (salary!=null)  {
	   System.out.println("inside of if con for sal");//printing to console
	   Query q2 = pm.newQuery(ExGetSet.class, "salary==Salary");
	   q2.declareParameters("String Salary");
	   
	   //q.setFilter("salary == value");
	   // q.setFilter("salary == value ");
	  // q.declareParameters("String value"); //String containing one or more query parameter declarations
	 //System.out.println(q1.toString());
	  
	  
	  
	   
	   List<ExGetSet> results1 = (List<ExGetSet>) q2.execute(salary); //An ordered collection 

	    if (!results1.isEmpty()) {
	      for (ExGetSet print : results1) {
	        %>
	           <tr>
	           <td><%=print.getFullname()%></td>
	           <td><%=print.getEmail()%></td>
	           <td><%=print.getAge()%></td>
	           <td><%=print.getSalary()%></td>
	         </tr>
	       <%
	    }
	 } 
	   
	 } 
   if (fullname!=null)  {
	   System.out.println("inside of if con for sal");//printing to console
	   Query q3 = pm.newQuery(ExGetSet.class, "fullname==Fullname");
	   q3.declareParameters("String Fullname");
	   
	   //q.setFilter("salary == value");
	   // q.setFilter("salary == value ");
	  // q.declareParameters("String value"); //String containing one or more query parameter declarations
 //System.out.println(q1.toString());
	  
	  
	  
	   
	   List<ExGetSet> results2 = (List<ExGetSet>) q3.execute(fullname); //An ordered collection 

	    if (!results2.isEmpty()) {
	      for (ExGetSet print : results2) {
	        %>
	           <tr>
	           <td><%=print.getFullname()%></td>
	           <td><%=print.getEmail()%></td>
	           <td><%=print.getAge()%></td>
	           <td><%=print.getSalary()%></td>
	         </tr>
	       <%
	    }
	 } 
	   
	 } 
   
   
    else {
      List<ExGetSet> results = (List<ExGetSet>) q.execute();

      if (!results.isEmpty()) {
        for (ExGetSet print : results) {
     %>
          <tr>
            <td><%=print.getFullname()%></td>
            <td><%=print.getEmail()%></td>
            <td><%=print.getAge()%></td>
            <td><%=print.getSalary()%></td>
          </tr>
     <%
  }
} 
    else {
        
     %>
  <script>
    window.alert('RESULTS MISMATCH...!!!');
  </script>

     <%
   }
  }
} 
//catch(Exception e){
//	System.out.prinln("Exception");
//}
  finally {
    q.closeAll();
}
      %>

    </body>
</html>