<%@ page        language="java" 
          contentType="text/html; 
          charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.sql.*" %>
    
        <style>
    @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&family=Josefin+Slab:wght@600&family=Nunito:ital,wght@0,400;0,700;1,200&family=Outfit:wght@300&family=Pacifico&display=swap');
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
             background:linear-gradient(skyblue,lightpink,ivory,lightpink,lightblue);
             margin:2px;
             border:2px;
         }
         p
         {
            font-size:60px;
            font-family: 'Dancing Script', cursive;
            color:brown;
         }
         h2
         {
              color:black;
              font-family:'Outfit', sans-serif;
                 
         }
         h1
         {
            font-size:45px;
            font-family: 'Josefin Slab', serif; ;
            color:black;
         }
         h3
         {
             color:black;
             background-color:ivory;
             font-size:40px;
             fint-family:'Josefin Slab', serif;
         }
    </style>
    
<%
   
    try
    {
        String rollnum=request.getParameter("rollnum");
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/wtproject","sowmya","5200");
    	Statement st=c1.createStatement();
        ResultSet rs=st.executeQuery("select * from students inner join results where students.rollnum=results.rollnum and students.rollnum='"+rollnum+"'");
        out.println("<html><body><center><p><u>SR University</u><p>Warangal-506371,Telangana,India</p><h1><u>Student Memo</u></h1><hr>");
        if(rs.next())
    	{
        	out.println("<h2>Student Name : "+rs.getString(1)+"</h2>");
        	out.println("<h2>Father Name : "+rs.getString(2)+"</h2>");
        	out.println("<h2>Hall Ticket : "+rs.getString(6)+"</h2>");
        	out.println("<h2>Course : "+rs.getString(4)+"</h2>");
        	out.println("<h2>Branch : "+rs.getString(5)+"</h2>");
        	out.println("<table border=1>");
        	out.println("<tr><th>Subject Name</th><th>Full Marks</th><th>Obtained Marks</th></tr>");
        	out.println("<tr><td>Web Technologies</td><td>100</td><td>"+rs.getString(12)+"</td></tr>");
        	out.println("<tr><td>Computer Networks</td><td>100</td><td>"+rs.getString(14)+"</td></tr>");
        	out.println("<tr><td>Design and Analysis of Algotithm</td><td>100</td><td>"+rs.getString(14)+"</td></tr>");
        	out.println("<tr><td>Web Technologies lab</td><td>100</td><td>"+rs.getString(15)+"</td></tr>");
        	out.println("<tr><td>Computer Networks Lab</td><td>100</td><td>"+rs.getString(16)+"</td></tr>");
        	out.println("<tr><td>Design and Analysis of Algotithm Lab</td><td>100</td><td>"+rs.getString(17)+"</td></tr>");
        	
        	int sum=rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15)+rs.getInt(16)+rs.getInt(17);
        	int per=sum/6;
        	out.println("<tr><td colspan=2><b>Total Marks:</b></td><td>"+sum+"</td></tr>");
        	out.println("<tr><td colspan=2><b>Percentage (%):</b></td><td>"+sum/6+"%"+"</td></tr><br><br>");
    	 }
        int sum=rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15)+rs.getInt(16)+rs.getInt(17);
        if(sum/6>90)
        {
        	out.println("<h3>pass</h3>");
        	out.println("<h3>Grade : A+</h3>");
        
        }
        else if(sum/6>80)
        {
        	out.println("<h3>pass</h3>");
        	out.println("<h3>Grade : A</h3>");
        }
        else if(sum/6>70)
        {
        	out.println("<h3>pass</h3>");
        	out.println("<h3>Grade : B</h3>");
        }
        else if(sum/6>60)
        {
        	out.println("<h3>pass</h3>");
        	out.println("<h3>Grade: C</h3>");
        }
        else
        {
        	out.println("<h3>fail</h3>");
        }
     }
    catch(Exception e)
    {
    	response.sendRedirect("ErrorStudent.html");
    }
    
%>

