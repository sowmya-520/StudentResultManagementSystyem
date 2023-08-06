<%
   String user=request.getParameter("username");
   String pass=request.getParameter("password");
   
   if(user.equalsIgnoreCase("Sowmya")&& pass.equalsIgnoreCase("5200"))
   {
	   response.sendRedirect("AdminHome.html");
   }
   else
   {
	   response.sendRedirect("ErrorAdmin.html"); 
   }
%>