<%@include file="../cabecalho.jsp"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="modelo.Pergunta"%>
<%
    if (request.getParameter("idzinho") == null)
    {
        response.sendRedirect("list.jsp");
        return;
    }

    Integer idzinho = Integer.parseInt(request.getParameter("idzinho"));
    PerguntaDAO dao = new PerguntaDAO();
    Pergunta pg = dao.buscarPorChavePrimaria(idzinho);

    if (pg == null)
    {
        response.sendRedirect("list.jsp");
        return;

    }
    
    CategoriaDAO cdao = new CategoriaDAO();
    List<Categoria> lista = cdao.listar();
        

%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Pergunta - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- �rea que ocupar� o campo de formul�rio
                    segunda div -- campo de texto e label 
                -->
               <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtIdzinho" />
                        <label class="mdl-textfield__label" for="txtIdzinho">ID</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtA" />
                        <label class="mdl-textfield__label" for="txtA">A</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtB" />
                        <label class="mdl-textfield__label" for="txtB">B</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtC" />
                        <label class="mdl-textfield__label" for="txtC">C</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtD" />
                        <label class="mdl-textfield__label" for="txtD">D</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtNivel" />
                        <label class="mdl-textfield__label" for="txtNivel">N�vel</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtCerta" />
                        <label class="mdl-textfield__label" for="txtCerta">Certa</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtEnunciado" />
                        <label class="mdl-textfield__label" for="txtEnunciado">Enunciado</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selCategoria" name="selCategoria" value="<%=obj.getCategoria()%>">
                        <option value="">Selecione a resposta</option>
                            <%                            //percorrer minha lista de cursos
                               String selected = "";    
                               for (Categoria item : lista) {
                               if(item.getNome()== pg.getCategoria().getNome())
                               {
                               selected = "selected";
                               }
                            %>
                        <option value="<%=item.getNome()%>" <%=selected%>><%=item%></option>
                            <%
                            selected = "";
                             }
                            %>
                        </select>
                        <label class="mdl-select__label" for="selCategoria">Exemplo Select</label>
                    </div>
                </div>
                        
                <div class="mdl-cell--12-col">
                    
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">save</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">clear</i></button>
                    
                    
                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>


