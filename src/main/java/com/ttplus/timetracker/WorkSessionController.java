package com.ttplus.timetracker;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/user/storeDetails", "/user/myLogs", "/user/deleteTask"})

public class WorkSessionController extends HttpServlet {
	
		private static final long serialVersionUID = 1L;
		WorkSessionDAO dao = new WorkSessionDAO();   

		protected void doGet(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
					
					String act = request.getServletPath();
					
					switch(act) {
					
						case "/user/storeDetails":
						storeDetails(request, response);
						break;
						
						case "/user/myLogs":
						showDetails(request, response);
						break;	
						
						case "/user/deleteTask":
							deleteTask(request, response);
							break;	
						
					}
				}
		
		
		private void deleteTask(HttpServletRequest request, HttpServletResponse response) throws IOException {
			
			int id = Integer.parseInt(request.getParameter("id"));
			
			dao.deleteTask(id);
				
			response.sendRedirect ("myLogs");
			
		}


		private void showDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			List<WorkSession> ws = new ArrayList<>();
			
			ws = dao.getDetails();
			System.out.println("XXXYYYZZZ"+ws);
			request.setAttribute("tasklist", ws);
			RequestDispatcher rd = request.getRequestDispatcher("myLogs.jsp");
			rd.forward(request, response);
			
		}


		private void storeDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			int timeDuration = Integer.parseInt(request.getParameter("ftime"));
			String taskName = request.getParameter("taskName");
			int coffeeCount = Integer.parseInt(request.getParameter("coffeeCount"));
			System.out.println(taskName + timeDuration + "coffeeCount:" + coffeeCount);
			LocalDate today = LocalDate.now();
			String date = Date.valueOf(today).toString();
			//String selectedOption = request.getParameter("selectedOption");
			
			/*HttpSession session = request.getSession();
			session.setAttribute("selectedOption", selectedOption);*/
			
			//System.out.println(coffeeCount);)
			WorkSession ws = new WorkSession(timeDuration, date, coffeeCount, taskName);
			dao.insertDetails(ws);
			response.sendRedirect ("myLogs");
			
		}
		
	
}