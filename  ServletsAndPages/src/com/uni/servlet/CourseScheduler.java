package com.uni.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CourseScheduler
 */
@WebServlet("/CourseScheduler")
public class CourseScheduler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseScheduler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String[] topics = {"Web Development Basics", "Servlets and Pages", 
							"Containers, Filters and Sessions", "Enterprise Java Beans", 
							"Spring Core", "Spring MVC", "Spring Security", "Oracle Database",
							"Java Persistence"};
		
		 String startDate = "2016-01-14";
		 SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
		 Calendar c = Calendar.getInstance();
		 Date date = new Date();
		 try {
			 date = ft.parse(startDate);
			 c.setTime(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		out.println("<h1>Java Web Development</h1>");
		out.print("<table border = \"1px\">");
		out.print("<th>Topic</th>");
		out.print("<th>Date</th>");
		for (String topic : topics) {
			out.print("<tr>");
			out.print("<td>" + topic + "</td>");	
			out.print("<td>" + c.getTime() + "</td>");
			 c.add(Calendar.DATE, 7); // Adding 7 days
			out.print("</tr>");
		}
		out.print("</table>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
