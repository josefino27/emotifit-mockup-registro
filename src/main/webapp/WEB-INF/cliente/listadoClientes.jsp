<%@page import="java.sql.*"%>
<%@page import="datos.Conexion"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- usuarios totales -->
<div class="py-3">
   <div class="card text-center bg-light  mb-3 "> 
       <div class="card-body">
           <h3>Usuarios total</h3>
           <h4 class="display-6"></h4>
           <i class="fas fa-users"></i> ${totalclientes}
       </div>
   </div>
</div>
       
<div class="container">
    <div class="navbar">

        <form class="form-line">
            <input type="search" name="txtBuscar" class="form-control">
            
            <input type="submit" name="accion" value="buscar" class="btn btn-outline-success">
        </form>

       
        <table  class="table table-striped">       
           
    <thead class="thead-dark">
    <tr>

                <th>Id</th>
                <th>Nombre</th>
                <th>Correo</th>
                <th>password</th>
                <th>Altura</th>
                <th>Peso</th>
                <th>Edad</th>
                <th>Genero</th>
                <th>Objetivo</th>
                <th>Limitacion</th>
                <th>Accion</th>

            </tr>
            </thead>
            
            <tbody> 
                    <% 
                        
            Conexion con = new Conexion() ;
            Statement smt;
            ResultSet rs;
            
            String nombuscar=request.getParameter("txtBuscar");
            if(nombuscar!=null){

                smt= con.getConnection().createStatement();
                rs = smt.executeQuery("select * from usuario where nombre LIKE"+"'%"+nombuscar+"%'");
                 while(rs.next()){  
                    %>
            <tr>
            <td>${rs.getInt("id_usuario")}</td>
            <td><%= rs.getString("nombre")%></td>
            <td><%= rs.getString("correo")%></td>
            <td><%= rs.getString("password")%></td>
            <td><%= rs.getInt("altura")%></td>
            <td><%= rs.getInt("peso")%></td>
            <td><%= rs.getInt("edad")%></td>
            <td><%= rs.getString("genero")%></td>
            <td><%= rs.getString("objetivo")%></td>
            <td><%= rs.getString("limitacion")%></td>
            <td>
                            <a href="ServletControlador?accion=editar&idUsuario=<%= rs.getInt("id_usuario")%>"
                               class="btn btn-secundary">
                                <i class="fas fa-pen-alt"></i>Editar
                            </a>
                        </td>

            </tr>       
            <% }}else{%>
                    
             </tbody>

         </table>

    </div>
    
</div>       

<table  class="table table-striped">       
    <!-- recorrer lista  enviada desde el servletControlador  -->
            <tbody> 
                <c:forEach var="client" items="${clientes}">

                    <tr>
                        <td>${status.count}</td>
                        <td>${client.nombre}</td>
                        <td>${client.correo} </td>
                        <td>${client.password} </td>
                        <td>${client.altura} </td>
                        <td>${client.peso}</td>
                        <td>${client.edad} </td>
                        <td>${client.genero} </td>
                        <td>${client.objetivo} </td>
                        <td>${client.limitacion}</td>    
                        <td>
                            <a href="ServletControlador?accion=editar&idUsuario=${client.idUsuario}"
                               class="btn btn-secundary">
                                <i class="fas fa-pen-alt"></i>Editar
                            </a>
                        </td>
                    </tr>               
                </c:forEach>
            </tbody>
        </table>
            <%}%>
               
<jsp:include page="/WEB-INF/cliente/agregarCliente.jsp"/>