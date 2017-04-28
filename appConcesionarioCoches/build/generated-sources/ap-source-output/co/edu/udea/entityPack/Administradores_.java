package co.edu.udea.entityPack;

import co.edu.udea.entityPack.Ventas;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-02-24T21:11:05")
@StaticMetamodel(Administradores.class)
public class Administradores_ { 

    public static volatile SingularAttribute<Administradores, String> password;
    public static volatile SingularAttribute<Administradores, String> apellido;
    public static volatile ListAttribute<Administradores, Ventas> ventasList;
    public static volatile SingularAttribute<Administradores, String> id;
    public static volatile SingularAttribute<Administradores, String> nombre;
    public static volatile SingularAttribute<Administradores, String> username;

}