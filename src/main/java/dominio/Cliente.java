
package dominio;


public class Cliente {
    private int idUsuario;
    private String nombre;
    private String correo;
    private String password;
    private int altura;
    private int peso; 
    private int edad; 
    private String genero; 
    private String objetivo; 
    private String limitacion; 

    public Cliente() {
    }

    public Cliente(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Cliente(String nombre, String correo, String password, int altura, int peso, int edad, String genero, String objetivo, String limitacion) {
        this.nombre = nombre;
        this.correo = correo;
        this.password = password;
        this.altura = altura;
        this.peso = peso;
        this.edad = edad;
        this.genero = genero;
        this.objetivo = objetivo;
        this.limitacion = limitacion;
    }
    

    public Cliente(int idUsuario, String nombre, String correo, String password, int altura, int peso, int edad, String genero, String objetivo, String limitacion) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.correo = correo;
        this.password = password;
        this.altura = altura;
        this.peso = peso;
        this.edad = edad;
        this.genero = genero;
        this.objetivo = objetivo;
        this.limitacion = limitacion;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAltura() {
        return altura;
    }

    public void setAltura(int altura) {
        this.altura = altura;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getObjetivo() {
        return objetivo;
    }

    public void setObjetivo(String objetivo) {
        this.objetivo = objetivo;
    }

    public String getLimitacion() {
        return limitacion;
    }

    public void setLimitacion(String limitacion) {
        this.limitacion = limitacion;
    }


    
    
    

}