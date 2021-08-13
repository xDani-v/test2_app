<%-- 
    Document   : editar
    Created on : 12 ago. 2021, 19:33:34
    Author     : Daniel Jazmany Villano Escobar
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
        <title>Crear empleado</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
           String nombre =request.getParameter("nombre");
           String direccion =request.getParameter("direccion");
           String telefono =request.getParameter("telefono");
           %>
        <div class="container mt-5">
            <div class="row">
                <div class="col.sm">   
                    <form action="editar.jsp" method="get">
                        <div class="form-group">
                            <label for="nombre">Nombre del empleado</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" value="<%=nombre%>" placeholder="Nombre" required="requerido">
                        </div>
                        <div class="form-group">
                            <label for="nombre">Direccion del empleado</label>
                            <input type="text" class="form-control" id="direccion" name="direccion" value="<%=direccion%>"  placeholder="Direccion" required="requerido">
                        </div>
                        <div class="form-group">
                            <label for="nombre">Telefono de contacto</label>
                            <input type="text" class="form-control" id="telefono" name="telefono"  value="<%=telefono%>"  placeholder="Telefono" required="requerido">
                        </div>
                        <a href="index.jsp" class="btn btn-danger">cancelar<i class="fa fa-times" aria-hidden="true"></i></a>
                        <button type="submit" name="enviar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                        <input type="hidden" name="id"  value="<%=id%>">
                    </form>
                </div>
            </div>
        </div>
        <%
            if (request.getParameter("enviar") != null) {
              
                try {
                    Connection con = null;
                    Statement st = null;
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    String sURL = "jdbc:mysql://localhost:3307/jsp";
                    con = DriverManager.getConnection(sURL, "root", "12345");
                    st = con.createStatement();
                    st.execute("UPDATE empledos set nombre='" + nombre + "', direccion='" + direccion + "',telefono='" + telefono + "' WHERE id='"+id+"';");
                   request.getRequestDispatcher("index.jsp").forward(request, response);
                } catch (Exception e) {
                    out.print(e);
                }
            }
        %>
    </body>
</html>
