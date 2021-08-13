<%-- 
    Document   : index
    Created on : 9 ago. 2021, 20:50:03
    Author     : Daniel Jazmany Villano Escobar
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
            <%--Link para implementacion de boostrap--%>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
         <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
        <title>Lista de empleados</title>
    </head>
    <body>
        <%
            /*Declracion de las variables inciales*/
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>
        <div class="container mt-5">
            <div class="row">
                <div class="col.sm">    
                    <table class="table table-striped">
                        ...<thead>
                            <tr>
                                <%--Columnas de la tabla--%>
                                <th scope="col" colspan="4" class="text-center">Empleados</th>
                                <th scope="col">
                                    <a href="crear.jsp"> <i class="fa fa-user-plus" aria-hidden="true"></i></a>
                                </th>
                            </tr>
                              <tr>
                                <%--Columnas de la tabla--%>
                                <th scope="col">id</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Direccion</th>
                                <th scope="col">Telefono</th>
                                  <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                /*Metodo para la coneccion de la base de datos*/
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    String sURL = "jdbc:mysql://localhost:3307/jsp"; 
                                    con = DriverManager.getConnection(sURL, "root", "12345");
                                    st = con.createStatement();
                                    rs = st.executeQuery("SELECT * FROM empledos;");
                                    while (rs.next()) {
                            %>
                            <tr>
                                <th scope="row"><%= rs.getString(1)%>  </th>
                                <td><%= rs.getString(2)%></td>
                                <td><%= rs.getString(3)%></td>
                                <td><%= rs.getString(4)%></td>
                                <td>
                                    <a href="editar.jsp?id=<%= rs.getString(1)%>&nombre=<%= rs.getString(2)%>&direccion=<%= rs.getString(3)%>&telefono=<%= rs.getString(4)%>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                    <a href="borrar.jsp?id=<%= rs.getString(1)%>" class="ml-5">  <i class="fa fa-trash" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                            <%
                                    }
                                } catch (Exception e) {
                                    out.print("Se ha producido un error: " + e);
                                }
                            %>


                        </tbody>
                    </table>

                </div>   
            </div>
        </div>   
    </body>


</html>
