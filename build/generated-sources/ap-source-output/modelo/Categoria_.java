package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Pergunta;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2016-04-04T16:41:13")
@StaticMetamodel(Categoria.class)
public class Categoria_ { 

    public static volatile SingularAttribute<Categoria, String> nome;
    public static volatile ListAttribute<Categoria, Pergunta> perguntaList;
    public static volatile SingularAttribute<Categoria, Integer> id;

}