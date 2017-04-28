package co.edu.udea.entityPack;

import co.edu.udea.entityPack.Administradores;
import co.edu.udea.entityPack.Clientes;
import co.edu.udea.entityPack.Vehiculos;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-02-24T21:11:05")
@StaticMetamodel(Ventas.class)
public class Ventas_ { 

    public static volatile SingularAttribute<Ventas, Administradores> idAdmin;
    public static volatile SingularAttribute<Ventas, Integer> precio;
    public static volatile SingularAttribute<Ventas, Vehiculos> matriculaCoche;
    public static volatile SingularAttribute<Ventas, Clientes> idCliente;
    public static volatile SingularAttribute<Ventas, Integer> idVenta;

}