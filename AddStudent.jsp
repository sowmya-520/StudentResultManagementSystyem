<%@ page        language="java" 
          contentType="text/html; 
          charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.sql.*" %>
<%
    String studentname=request.getParameter("studentname");
    String fathername=request.getParameter("fathername");
    String mothername=request.getParameter("mothername");
    String course=request.getParameter("course");
    String branch=request.getParameter("branch");
    String rollnum=request.getParameter("rollnum");
    String gender=request.getParameter("gender");
    String place=request.getParameter("place");
    String birthdate=request.getParameter("birthdate");
    String password=request.getParameter("password");
    try
    {
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/wtproject","sowmya","5200");
    	PreparedStatement st=c1.prepareStatement("insert into students values(?,?,?,?,?,?,?,?,?,?)");
     	st.setString(1,studentname);
    	st.setString(2,fathername);
    	st.setString(3,mothername);
    	st.setString(4,course);
    	st.setString(5,branch);
    	st.setString(6,rollnum);
    	st.setString(7,gender);
    	st.setString(8,place);
    	st.setString(9,birthdate);
    	st.setString(10,password);
    	st.executeUpdate();
    	out.println("success");
    	response.sendRedirect("AdminHome.html");
    }
    catch(Exception e)
    {response.sendRedirect("addStudentsError.html");}
%>