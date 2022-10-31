<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP formulario</title>
    </head>
    <body>
        <h1>resultado de procesar formulario</h1>
        Correo <%= request.getParameter("email") %>
        <br>
        Contraseña: <%= request.getParameter("password") %>
        <br>
        Nombre usuario: <%= request.getParameter("nombre") %>
        <br>
        Altura: <%= request.getParameter("altura")%>
        <br>
        Peso: <%=request.getParameter("peso")%>
        <br>
        
        <%
            float amt = Integer.parseInt(request.getParameter("altura"));
            float amt2 = amt/100;
            String m ="";
        
             float imc  = Integer.parseInt(request.getParameter("peso"))/(amt2*amt2);
             if(imc>=25){
        m = "sobrepeso";
     }
     if(imc>18.5 && amt2<=24.9){
         m="peso ideal";
     }
     if(imc<=18.5){
         m="bajo de peso";
     }
        %>
        IMC: <%=m%>
        <br>
        Edad: <%= request.getParameter("edad") %>
        <br>
        Genero: <%= request.getParameter("genero")%>
        <br>
        Objetivo: <%= request.getParameter("objetivo")%>
        <br>
        Limitacion: <%= request.getParameter("limitacion")%>
        <br>
        <a href="index.jsp">Regresar al inicio</a>
    </body>
</html>