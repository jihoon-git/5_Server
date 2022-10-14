package edu.kh.jsp.student.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.jsp.student.model.service.StudentService;
import edu.kh.jsp.student.model.vo.Student;

@WebServlet("/student/selectDepartment")
public class selectDepartmentServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		StudentService service = new StudentService();
		
		try {
			// 입력값
			String department = req.getParameter("inputDept");
			
			List<Student> stdList = service.selectDepartment(department);
			
			req.setAttribute("stdList", stdList);
			
			RequestDispatcher dispatcher
			= req.getRequestDispatcher("/WEB-INF/views/student/selectDepartment.jsp");
			
			dispatcher.forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
