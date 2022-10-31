package datos;

import dominio.Cliente;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClienteDaoJDBC {

    private static final String SQL_SELECT = "SELECT * "
            + "FROM usuario";
    private static final String SQL_SELECT_BY_ID = "SELECT * "
            + "FROM usuario WHERE id_usuario=?"; 
    
    private static final String SQL_INSERT = "insert into usuario (nombre, correo, password, altura, peso, edad, genero, objetivo, limitacion) "
            + "values (?,?,?,?,?,?,?,?,?)";
    
    private static final String SQL_UPDATE = "update usuario set nombre=?, correo=?, password=?, altura=?, peso=?, edad=?, genero=?, objetivo=?, limitacion=? WHERE id_usuario=?";
    private static final String SQL_DELETE = "DELETE FROM usuario Where id_usuario=?";

    public List<Cliente> listar() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Cliente cliente = null;
        List<Cliente> clientes = new ArrayList<>();
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT);
            rs = stmt.executeQuery();

            while (rs.next()) {
                int idUsuario = rs.getInt("id_usuario");
                String nombre = rs.getString("nombre");
                String correo = rs.getString("correo");
                String password = rs.getString("password");
                int altura = rs.getInt("altura");
                int peso = rs.getInt("peso");
                int edad = rs.getInt("edad");
                String genero = rs.getString("genero");
                String objetivo = rs.getString("objetivo");
                String limitacion = rs.getString("limitacion");

                cliente = new Cliente(idUsuario, nombre, correo, password, altura, peso, edad, genero, objetivo, limitacion);
                clientes.add(cliente);
            }

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
            Conexion.close(rs);
        }
        return clientes;
    }
    

    
        public Cliente encontrarClienteById(Cliente cliente) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT_BY_ID);
            stmt.setInt(1, cliente.getIdUsuario());
            rs = stmt.executeQuery();
            
            boolean valid = rs.next();
            if(valid){
            String nombre = rs.getString("nombre");
            String correo = rs.getString("correo");
            String password = rs.getString("password");
            int altura = rs.getInt("altura");
            int peso = rs.getInt("peso");
            int edad = rs.getInt("edad");
            String genero = rs.getString("genero");
            String objetivo = rs.getString("objetivo");
            String limitacion = rs.getString("limitacion");

           cliente.setNombre(nombre);
           cliente.setCorreo(correo);
           cliente.setPassword(password);
           cliente.setAltura(altura);
           cliente.setPeso(peso);
           cliente.setEdad(edad);
           cliente.setGenero(genero);
           cliente.setObjetivo(objetivo);
           cliente.setLimitacion(limitacion);
           
            }
        }catch(SQLException ex ){
            ex.printStackTrace(System.out);
             }finally{
            Conexion.close(conn);
            Conexion.close(stmt);
            Conexion.close(rs);
             }
    return cliente ;
    }


    public int insertarCliente(Cliente cliente) {
        int rows = 0;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setString(1, cliente.getNombre());
            stmt.setString(2, cliente.getCorreo());
            stmt.setString(3, cliente.getPassword());
            stmt.setInt(4, cliente.getAltura());
            stmt.setInt(5, cliente.getPeso());
            stmt.setInt(6, cliente.getEdad());
            stmt.setString(7, cliente.getGenero());
            stmt.setString(8, cliente.getObjetivo());
            stmt.setString(9, cliente.getLimitacion());

            rows = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
        }
        return rows;
    }

    public int actualizarCliente(Cliente cliente) {
        int rows = 0;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_UPDATE);
            stmt.setString(1, cliente.getNombre());
            stmt.setString(2, cliente.getCorreo());
            stmt.setString(3, cliente.getPassword());
            stmt.setInt(4, cliente.getAltura());
            stmt.setInt(5, cliente.getPeso());
            stmt.setInt(6, cliente.getEdad());
            stmt.setString(7, cliente.getGenero());
            stmt.setString(8, cliente.getObjetivo());
            stmt.setString(9, cliente.getLimitacion());
            stmt.setInt(10, cliente.getIdUsuario());

            rows = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
        }
        return rows;
    }

    public int eliminarCliente(Cliente cliente) {
        int rows = 0;
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, cliente.getIdUsuario());

            rows = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(conn);
            Conexion.close(stmt);
        }
        return rows;
    }

        
}
