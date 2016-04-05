package modelo;

import java.util.List;

public class Jogo {
        private List<Pergunta> perguntas;
        private Integer pontuação;
        private Integer pulos;
        
        public Jogo()
        {
            this.pulos = 3;
            this.pontuação = 0;
        }

    public List<Pergunta> getPerguntas() {
        return perguntas;
    }

    public void setPerguntas(List<Pergunta> perguntas) {
        this.perguntas = perguntas;
    }

    public Integer getPontuação() {
        return pontuação;
    }

    public void setPontuação(Integer pontuação) {
        this.pontuação = pontuação;
    }

    public Integer getPulos() {
        return pulos;
    }

    public void setPulos(Integer pulos) {
        this.pulos = pulos;
    }
    
    public Integer getAcerto()
    {
        Integer acerto = 0;
        if(this.pontuação == 0)
        {
            acerto = 1000;
        }
        return acerto;
    }
    
    public Integer getErro()
    {
        Integer erro = 0;
        return erro;
    }
        
}
