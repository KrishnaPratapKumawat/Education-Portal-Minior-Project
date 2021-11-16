package com.education.Register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String operation=request.getParameter("operation");
		System.out.println(operation);
		if(operation.equals("register"))
		{
		String name=request.getParameter("MyName");
		String lastname=request.getParameter("MyLastName");
		String Mydate=request.getParameter("Mydate");
		String Mygender=request.getParameter("Mygender");
		String MymobileNo=request.getParameter("MymobileNo");
		String MyEmail=request.getParameter("MyEmail");
		String Address=request.getParameter("Address");
		String pwdUser=request.getParameter("pwdUser");
		try
		{
			Connection con=GetConnection.getConnection();
			String sql="INSERT INTO `signup`(`firstname`, `lastname`, `D.O.B`, `Gender`, `MobileNumber`, `E-mail`, `Address`, `password`) VALUES (?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,name);
			ps.setString(2,lastname);
			ps.setString(3,Mydate);
			ps.setString(4,Mygender);
			ps.setString(5,MymobileNo);
			ps.setString(6,MyEmail);
			ps.setString(7,Address);
			ps.setString(8,pwdUser);
			int a=ps.executeUpdate();
			if(a!=0)
			{
			response.sendRedirect("Login.jsp?msg=2");
			}
			else {	
			}
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	  }
		else {
			String email=request.getParameter("username");
			String pwdUser=request.getParameter("pwdUser");
			try 
			{
				Connection connection=GetConnection.getConnection();
		 		PreparedStatement ps=connection.prepareStatement("select * from  signup where `E-mail`=? and password=?");
		 		ps.setString(1,email );
		 		ps.setString(2,pwdUser );
		 		//System.out.println("kdsfjkgjdfg");
		        ResultSet rs=ps.executeQuery();	
		        if(rs.next())
		        {
		        	response.sendRedirect("Home.jsp?msg=2");
		        }
		        else
		        {
		        	response.sendRedirect("Login.jsp?msg=1");
		        }
		        	
			}
		catch (Exception e) {
			// TODO: handle exception
       e.printStackTrace();
		}
	}
  }

}
