<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>

<%
Connection con = null;
Statement st = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/fly";
    String user = "root";
    String pass = "12345";
    String sql = "select * from airlines order by name";
    con = DriverManager.getConnection(url, user, pass);
    st = con.createStatement();
    rs = st.executeQuery(sql);
%>
<h1>Airlines List :</h1>
<table border="1">
    <tr>
        <th>Code</th>
        <th>Name</th>
    </tr>
    <%
    while (rs.next()) {
    %>
    <tr>
        <td>
            <%= rs.getString(1) %>
        </td>
        <td>
            <%= rs.getString(2) %>
        </td>
    </tr>
    <%
    }
    %>
</table>
<%
} catch (Exception e) {
    out.println("An error occurred: " + e.getMessage());
} finally {
    try {
        if (rs != null) rs.close();
        if (st != null) st.close();
        if (con != null) con.close();
    } catch (SQLException e) {
        out.println("Error closing database resources: " + e.getMessage());
    }
}
%>
