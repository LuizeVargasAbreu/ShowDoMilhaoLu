<%@include file="../cabecalho.jsp"%>
<%@page import="modelo.Pergunta"%>
<%@page import="dao.PerguntaDAO"%>
<%
    if(request.getParameter("txtIdzinho") == null || request.getParameter("txtA")== null || request.getParameter("txtB")== null || request.getParameter("txtC")== null || request.getParameter("txtD")== null
            || request.getParameter("txtNivel")== null || request.getParameter("txtCerta")== null || request.getParameter("txtEnunciado")== null)
    {
        response.sendRedirect("list.jsp");
        return;
    }

    Integer idzinho = Integer.parseInt(request.getParameter("txtIdzinho"));     
    String a = request.getParameter("txtA");
    String b = request.getParameter("txtB");
    String c = request.getParameter("txtC");
    String d = request.getParameter("txtD");
    Integer nivel = Integer.parseInt(request.getParameter("txtNivel"));
    String certa = request.getParameter("txtCerta");
    String enunciado = request.getParameter("txtEnunciado");

    PerguntaDAO dao = new PerguntaDAO();
    Pergunta pg = dao.buscarPorChavePrimaria(idzinho);

    if (pg == null)
    {
        response.sendRedirect("list.jsp");
        return;
    }
     pg.setId(idzinho);
     pg.setA(a);
     pg.setB(b);
     pg.setC(c);
     pg.setD(d);
     pg.setNivel(nivel);
     pg.setCerta(certa);
     pg.setEnunciado(enunciado);
   

    dao.alterar(pg);



%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            <p>Registro atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

