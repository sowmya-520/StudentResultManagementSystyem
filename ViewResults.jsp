<%@ page        language="java" 
          contentType="text/html; 
          charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.sql.*" %>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&family=Nunito:ital,wght@0,400;0,700;1,200&family=Pacifico&display=swap');
         th
         {
                 color:black;
                 background-color:thistle;
                 font-family:'Outfit', sans-serif;
                 font-size:20px;
                 padding:10px;
         }
         td
         {
              color:black;
              background-color:lavender;
              align:center;
              font-family:'Outfit', sans-serif;
              font-size:bolder;
         }
         table
         {
            justify-content:center;
            width:65%;
            color:hotpink;
            bordet-width:2px;
            border-style:groove;
         }
         body
         {
             background:linear-gradient(teal,turquoise,cyan,aquamarine,teal);
         }
         p
         {
            font-size:40px;
            font-family: 'Dancing Script', cursive;
            color:black;
         }
         p:hover
         {
             font-size:50px;
             background-color:black;
             color:white;
         }
    </style>
<%
    try
    {
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/wtproject","sowmya","5200");
    	Statement st=c1.createStatement();
    	ResultSet rs=st.executeQuery("select * from results");
    	out.println("<html><body><center><br><br><p>SR University</p><br><h1>Student Results</h1><br><br><table border=1>");
    	out.println("<tr><th>rollnum</th><th>webtechnologies</th><th>computernetworks</th><th>DAA</th><th>webtechnologieslab</th><th>computernetworks</th><th>DAALab</th><th>Total</th><th>Status</th></tr>");
    	while(rs.next())
    	{
         int sum=rs.getInt(2)+rs.getInt(3)+rs.getInt(4)+rs.getInt(5)+rs.getInt(6)+rs.getInt(7);
    	 out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(6)+"</td><td>"+sum+"</td><td>"+sum/6+"</td></tr>");
    	      
    	}
    	out.println("</center></table></body></html>");
    }
    catch(Exception e)
    {}
%>