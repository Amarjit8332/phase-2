<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
int count=Integer.parseInt(request.getParameter("no of persons"));
out.println("<h1>"+"Payment of amount " + 5000*count + "/- is successful" +"</h1>");
RequestDispatcher rd = request.getRequestDispatcher("/showdetails.jsp");
rd.include(request, response);
%>