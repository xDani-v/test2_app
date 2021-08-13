<%-- 
    Document   : borrar
    Created on : 12 ago. 2021, 20:03:30
    Author     : Daniel Jazmany Villano Escobar
--%>


<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            /*Declracion de las variables inciales*/
            Connection con = null;
            Statement st = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                String sURL = "jdbc:mysql://localhost:3307/jsp";
                con = DriverManager.getConnection(sURL, "root", "12345");
                st = con.createStatement();
                st.executeUpdate("DELETE FROM  empledos where id='" + request.getParameter("id") + "';");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } catch (Exception e) {
                out.print(e);
            }
        %>
    </body>
</html>
