
package datos;

import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;


public class Conexion {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3307/emotifit?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";
    
    public static DataSource getDataSource(){
        BasicDataSource ds = new BasicDataSource();
        ds.setUrl(JDBC_URL);
        ds.setUsername(JDBC_USER);
        ds.setPassword(JDBC_PASSWORD);
        ds.setInitialSize(50); // se hace pra tener 50 inicios de sesiones de manera inicial.
        return ds;
    }
    
    public static Connection getConnection() throws SQLException{
        return getDataSource().getConnection();
    }
    public static void close(ResultSet rs){
        try{rs.close();}catch(SQLException ex){ex.printStackTrace(System.out);}
    }
    public static void close(PreparedStatement stmt){
        try{stmt.close();}catch(SQLException ex){ex.printStackTrace(System.out);}
    }
    public static void close(Connection conn){
        try{conn.close();}catch(SQLException ex){ex.printStackTrace(System.out);}
    }
}
