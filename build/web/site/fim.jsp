<%-- 
    Document   : fim
    Created on : 21/03/2016, 15:37:29
    Author     : marcelosiedler
--%>

<%@page import="modelo.Ranking"%>
<%@page import="java.util.List"%>
<%@page import="dao.RankingDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <h1>ACABOU!!!!!</h1>
        <a href="jogo.jsp">Jogar novamente</a>
        <hr />
        <h4>TOP 10</h4>
        <table>

            <%
                RankingDAO dao = new RankingDAO();
                List<Ranking> lista = dao.listarTop();
                for (int i = 0; i < lista.size(); i++) {
            %>
            <tr>
                <th><%=i + 1%></th>
                <th><%=lista.get(i).getJogador()%></th>
                <th><%=lista.get(i).getPontos()%></th>
            </tr>

            <%
                } 
                dao.fechaEmf();
            %>
        </table>
        
        
    </body>
</html>
