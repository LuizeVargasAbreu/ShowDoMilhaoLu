<%-- 
    Document   : index
    Created on : 21/03/2016, 15:33:51
    Author     : marcelosiedler
--%>
<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%
    //Tentativa de login
    String mensagem = "";
    if(request.getParameter("txtEntrarLogin")!=null &&
            request.getParameter("txtEntrarSenha")!=null)
    {
        JogadorDAO dao = new JogadorDAO();
        Jogador jogador; //variável com o usuário logado
        String login = request.getParameter("txtEntrarLogin");
        String senha = request.getParameter("txtEntrarSenha");
        
        jogador = dao.realizarLogin(login, senha);
        if(jogador !=null)
        {
            //criar uma Sessão para o jogador
            //vou pra tela inicial do jogo
            session.setAttribute("jogador", jogador);
            //vou para tela de jogo
            response.sendRedirect("jogo.jsp");
        }
        else
        {
            mensagem = "Login errado";
        }
       
    }
    
        
    if(request.getParameter("txtCadastrarLogin") == null || request.getParameter("txtCadastrarSenha")== null || request.getParameter("txtCadastrarEmail")== null)
    {
    if(request.getParameter("txtCadastrarLogin")!=null &&
            request.getParameter("txtCadastrarSenha")!=null &&
            request.getParameter("txtCadastrarEmail") != null)
    {
        JogadorDAO dao = new JogadorDAO();
        Jogador jogador; //variável com o usuário cadastrado
        String login = request.getParameter("txtCadastrarLogin");
        String senha = request.getParameter("txtCadastrarSenha");
        String email = request.getParameter("txtCadastrarEmail");
        
        jogador = dao.realizarLogin(login, senha);
        if(jogador !=null)
        {
            //criar uma Sessão para o jogador
            //vou pra tela inicial do jogo
            session.setAttribute("jogador", jogador);
            //vou para tela de jogo
            response.sendRedirect("jogo.jsp");
        }
        else
        {
            mensagem = "Cadastrado não efetuado.";
        }
       
    }
    }
    else
    {
       // VER SE ESTA CERTO E CADASTRAR CORRETAMENTE    
        String login = request.getParameter("txtCadastrarLogin");
        String senha = request.getParameter("txtCadastrarSenha");
        String email = request.getParameter("txtCadastrarEmail");
                
        JogadorDAO dao = new JogadorDAO();
        Jogador jogador = new Jogador();

        jogador.setLogin(login);
        jogador.setSenha(senha);
        jogador.setEmail(email);
                
       try
        {
            dao.incluir(jogador);
            mensagem = "Jogador cadastrado com sucesso";
            
        }
        catch(Exception ex)
        {
            mensagem = "Erro ao cadastrar jogador";
        }
        
    }
    
         
    String login = request.getParameter("txtCadastrarLogin");
    String senha = request.getParameter("txtCadastrarSenha");
    String email = request.getParameter("txtCadastrarEmail");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show do Milhão</title>
        <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="centralizar">
            <img src="img/show.png" alt=""/>
        </div>
        <div class="inicialformulario">
            <h4>Entrar</h4>
            <form action="index.jsp" method="post">
                <label>Login:</label>
                <input type="text" name="txtEntrarLogin"
                       /><br/>
                <label>Senha</label>
                <input type="text" name="txtEntrarSenha"
                       /><br/>
                <input type="submit" value="Entrar" />
                <a href="jogo.jsp">Pular login</a>
            </form>
            <div class="centralizar">
                <hr/>
                ou
                <hr/>
            </div>
            <h4>Cadastre-se</h4>
            
            <form action="index.jsp" method="post">
                <label>Login:</label>
                <input type="text" name="txtCadastrarLogin"
                       /><br/>
                <label>Senha</label>
                <input type="text" name="txtCadastrarSenha"
                       /><br/>
                <label>Email</label>
                <input type="text" name="txtCadastrarEmail"
                       /><br/>
                <input type="submit" value="Cadastrar" />
                
            </form>
        </div>
    </body>
</html>
