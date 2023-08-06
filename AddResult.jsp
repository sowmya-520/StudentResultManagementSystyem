<%@ page        language="java" 
          contentType="text/html; 
          charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.sql.*" %>
<%
    String rollnum=request.getParameter("rollnum");
    String wt=request.getParameter("wt");
    String cn=request.getParameter("cn");
    String daa=request.getParameter("daa");
    String wtlab=request.getParameter("wtlab");
    String cnlab=request.getParameter("cnlab");
    String daalab=request.getParameter("daalab");
    try
    {
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/wtproject","sowmya","5200");
    	PreparedStatement st=c1.prepareStatement("insert into results values (?,?,?,?,?,?,?)");
    	st.setString(1,rollnum);
    	st.setString(2,wt);
    	st.setString(3,cn);
    	st.setString(4,daa);
    	st.setString(5,wtlab);
    	st.setString(6,cnlab);
    	st.setString(7,daalab);
    	st.executeUpdate();
    	response.sendRedirect("AdminHome.html");
    }
    catch(Exception e)
    {
    	response.sendRedirect("addResultsError.html");
    }
%>