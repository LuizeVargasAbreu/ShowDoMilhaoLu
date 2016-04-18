<%-- 
    Document   : pergunta
    Created on : 21/03/2016, 15:37:13
    Author     : marcelosiedler
--%>

<%@page import="modelo.Jogador"%>
<%@page import="java.util.List"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="modelo.Pergunta"%>
<%@page import="modelo.Jogo"%>
<%
/*    QUANDO O JOGO COMEÇA
- Inicializar o meu jogo
- Buscar a lista de perguntas
- Guardar o meu jogo na session
- Exibir a primeira pergunta na tela
*/
//Verificar se diferencia o botão que eu cliquei


//Trecho executado QUANDO eu acesso
//o jogo pela primeira vez - PERGUNTA 01
    if(request.getParameter("btnConfirmar") != null)
    {
        out.print("Foi o confirmar.");
    }
       
    Jogo jogo = new Jogo();
    PerguntaDAO dao = new PerguntaDAO();
    List<Pergunta> lista;
    lista = dao.listar();
    jogo.setPerguntas(lista);
//Até aqui - primeira vez

    session.setAttribute("jogo", jogo);
    Pergunta pergunta = jogo.getPerguntas().get(0);
    
   Jogador jogador = (Jogador)session.getAttribute("jogador");   
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="pergunta">
            <h4 class="enunciado"><%=pergunta.getEnunciado()%></h4>
            <div class="opcoes">
                <form action="pergunta.jsp" method="post">
                     <input type="radio" value="A" name="rdoPergunta" />
                    <%=pergunta.getA()%><br/>
                    <input type="radio" value="B" name="rdoPergunta" />
                    <%=pergunta.getB()%><br/>
                    <input type="radio" value="C" name="rdoPergunta" />
                    <%=pergunta.getC()%><br/>
                    <input type="radio" value="D" name="rdoPergunta" />
                    <%=pergunta.getD()%><br/>
                    <hr/>
                    <input type="submit" value="confirmar" name="btnConfirmar" />
                    <input type="submit" value="pular" name="btnPular" />(<%=jogo.getPulos()%>)
                      <input type="submit" value="parar" />
                </form>
            </div>
        </div>
        <div class="painelUsuario">
            Jogador: <%=jogador.getLogin()%><br />
            <%=jogo.getErro()%> errar<br/>
            <%=jogo.getPontuacao()%> parar<br/>
            <%=jogo.getAcerto()%> acertar<br/>
            
            
        </div>
        
    </body>
</html>
