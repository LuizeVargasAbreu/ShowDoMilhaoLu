package modelo;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Jogador;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2016-03-22T11:21:46")
@StaticMetamodel(Ranking.class)
public class Ranking_ { 

    public static volatile SingularAttribute<Ranking, Integer> id;
    public static volatile SingularAttribute<Ranking, Integer> pontos;
    public static volatile SingularAttribute<Ranking, Jogador> jogador;
    public static volatile SingularAttribute<Ranking, Date> data;

}