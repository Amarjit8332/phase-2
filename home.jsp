<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager, java.sql.Connection, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FlyAway</title>
</head>
<body>
<h1>FlyAway</h1>
<form action="search.jsp" method="post">
    Travel Date <input type="date" id="traveldate" name="traveldate" placeholder="dd/mm/yyyy" required>
    <datalist id="source">
        <%
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/fly";
        String user = "root";
        String pass = "12345";
        String sql = "select name from places order by name";
        Connection con = DriverManager.getConnection(url, user, pass);
        ResultSet rs = con.createStatement().executeQuery(sql);
        while (rs.next()) {
            String source = rs.getString("name");
        %>
        <option value="<%=source%>" />
        <%
        }
        // Close ResultSet and Connection
        rs.close();
        con.close();
        %>
    </datalist>
    <p>
        Source: <input type="text" name="source" list="source" required/>
    </p>
    <br><br>
    <datalist id="destination">
        <%
        Class.forName("com.mysql.jdbc.Driver");
        String url1 = "jdbc:mysql://localhost:3306/fly";
        String user1 = "root";
        String pass1 = "12345";
        String sql1 = "select name from places order by name";
        Connection con1 = DriverManager.getConnection(url1, user1, pass1);
        ResultSet rs1 = con1.createStatement().executeQuery(sql1);
        while (rs1.next()) {
            String destination = rs1.getString("name");
        %>
        <option value="<%=destination%>" />
        <%
        }
        // Close ResultSet and Connection
        rs1.close();
        con1.close();
        %>
    </datalist>
    <p>
        Destination: <input type="text" name="destination" list="destination" required/>
    </p>
    <br><br> No of Persons
    <input type="number" name="no_of_persons" required>
    <br><br>
    <input type="submit" value="show available flights">
    <br><br>
</form>
<form action="login.jsp" method="post">
    <input type="submit" value="Admin Login">
</form>
</body>
</html>
