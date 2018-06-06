package utilidades;

import static org.junit.Assert.*;
import java.util.List;
import org.junit.Test;

import com.springmvc.dao.*;
import com.springmvc.model.*;

public class PUList {
	
		   @Test
		   public void atributos() {
		      System.out.println("comprobar ID de Personas");
		      List<Personas> listado = new PersonasDAOImpl().list();	
		      System.out.println(listado.get(0).getNombre());
		      System.out.println("Holahola");
		       assertTrue(listado.get(0).getIdpersonas()>0);
		   }

		   
		

}
