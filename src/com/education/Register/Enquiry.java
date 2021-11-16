package com.education.Register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Enquiry
 */
public class Enquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Enquiry() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String name=request.getParameter("name");
		String clgname=request.getParameter("clgname");
		String email=request.getParameter("email");
		String Mobile=request.getParameter("Mobile");
		try
		{
			Connection con=GetConnection.getConnection();
			String sql="INSERT INTO `enquiry`( `name`, `college`, `email`, `mobile`)  VALUES (?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,clgname);
			ps.setString(3,email);
			ps.setString(4,Mobile);
			int a=ps.executeUpdate();
			if(a!=0)
			{
			response.sendRedirect("Home.jsp?msg=3");
			}
			else {	
				
			}
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
	}

}
