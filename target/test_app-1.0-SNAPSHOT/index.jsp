<%-- 
    Document   : index
    Created on : 9 ago. 2021, 20:50:03
    Author     : Daniel Jazmany Villano Escobar
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <title>Lista de empleados</title>
    </head>
    <body>
        <%
            Connection con=null; 
            Statement st = null;
            ResultSet rs=null;
        %>
        <div class="container mt-5">
            <div class="row">
                <div class="col.sm">    
                    <table class="table table-striped">
                        ...<thead>
                            <tr>
                                <th scope="col">id</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Direccion</th>
                                <th scope="col">Telefono</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                            </tr>
                        
                        </tbody>
                    </table>

                </div>   
            </div>
        </div>   
    </body>


</html>
