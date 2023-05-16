
package conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class conexion {
    
    Connection conectar = null;
    
    String  usuario = "conexion_fincas";
    String  contrasenia = "1234";
    String  bd = "bd_fincas";
    String  ip = "localhost";
    String  puerto = "1344";
     
    String cadena = "jdbc:sqlserver://" + ip + ":" + puerto + "/" + bd ;
    
    public Connection establecerConxion(){
    
    try {
         
      String cadena = "jdbc:sqlserver://localhost:" + puerto + ";" + "databaseName=" + bd;
       conectar = DriverManager.getConnection(cadena,usuario,contrasenia);
       JOptionPane.showMessageDialog(null, "conexion exitosa");
                            
        } catch (Exception e){
        JOptionPane.showConfirmDialog(null, "error en la base de datos" + e.toString());
        
        }
    
    return conectar ;
    }
    
  
}
