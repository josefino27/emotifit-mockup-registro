package web;

import datos.ClienteDaoJDBC;
import dominio.Cliente;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ServletControlador")

public class ServletControlador extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        
            String accion = req.getParameter("accion");
            if(accion!=null){
                switch(accion){
                    case "editar":
                        this.editarCliente(req, resp);
                        break;
                        
                    case "eliminar":
                        this.eliminarCliente(req, resp);
                        break;
                   
                    default:
                        this.accionDefault(req, resp);
                }
            }else{
                this.accionDefault(req, resp);
            }
            
    }
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
            String accion = req.getParameter("accion");
            if(accion!=null){
                switch(accion){
                    case "insertar":
                        this.insertarCliente(req, resp);
                        break;
                        
                    case "modificar":
                        this.modificarCliente(req, resp);
                        break; 
                        
                    default:
                        this.accionDefault(req, resp);
                    
                }
            }else{
                this.accionDefault(req, resp);
            }
        }
        
        private void eliminarCliente(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
              int idUsuario=Integer.parseInt(req.getParameter("idUsuario"));
            
            // crear el objeto cliente.
            Cliente cliente = new Cliente(idUsuario);
            // insertamos el cliente creado
            int registroMod = new ClienteDaoJDBC().eliminarCliente(cliente);
              System.out.println(registroMod);
              //redirigir al inicio
              this.accionDefault(req,resp);      
            
           }
                
        private void editarCliente(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        
            // recuperamos el idUsuario
            int idUsuario = Integer.parseInt(req.getParameter("idUsuario"));
            Cliente cliente = new ClienteDaoJDBC().encontrarClienteById(new Cliente(idUsuario));
            req.setAttribute("cliente",cliente);
            String jspEditar= "/WEB-INF/cliente/editarCliente.jsp";
            req.getRequestDispatcher(jspEditar).forward(req, resp);
        }
        
        private void modificarCliente(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        
            int idUsuario=Integer.parseInt(req.getParameter("idUsuario"));
            String nombre=req.getParameter("nombre");
            String correo=req.getParameter("email");
            String password=req.getParameter("password");
            int altura=Integer.parseInt(req.getParameter("altura"));
            int peso=Integer.parseInt(req.getParameter("peso"));
            int edad=Integer.parseInt(req.getParameter("edad"));
            String genero=req.getParameter("genero");
            String objetivo=req.getParameter("objetivo");
            String limitacion=req.getParameter("limitacion");
            
            // crear el objeto cliente.
            Cliente cliente = new Cliente(idUsuario,nombre,correo,password,altura,peso,edad,genero,objetivo,limitacion);
            // insertamos el cliente creado
            int registroMod = new ClienteDaoJDBC().actualizarCliente(cliente);
              System.out.println(registroMod);
              //redirigir al inicio
              this.accionDefault(req,resp);

        }

        private void insertarCliente(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
            //recuperamos los valores del formulario
            String nombre=req.getParameter("nombre");
            String correo=req.getParameter("email");
            String password=req.getParameter("password");
            int altura=Integer.parseInt(req.getParameter("altura"));
            int peso=Integer.parseInt(req.getParameter("peso"));
            int edad=Integer.parseInt(req.getParameter("edad"));
            String genero=req.getParameter("genero");
            String objetivo=req.getParameter("objetivo");
            String limitacion=req.getParameter("limitacion");
            
            // crear el objeto cliente.
            Cliente cliente = new Cliente(nombre,correo,password,altura,peso,edad,genero,objetivo,limitacion);
            // insertamos el cliente creado
            int registroMod = new ClienteDaoJDBC().insertarCliente(cliente);
              System.out.println(registroMod);
              //redirigir al inicio 
              this.accionDefault(req,resp);
        }
        
        private void accionDefault (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Cliente> clientes = new ClienteDaoJDBC().listar();
        System.out.println("clientes:"+clientes);
        req.setAttribute("clientes", clientes);
        req.setAttribute("totalclientes", clientes.size());
        req.getRequestDispatcher("/menu.jsp").forward(req, resp);
        }
        
}
