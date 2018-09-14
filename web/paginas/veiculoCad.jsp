<%-- 
    Document   : veiculoCad
    Created on : 13/09/2018, 13:56:07
    Author     : Asus
--%>
<%@page import="Entidades.TipoVeiculo"%>
<%@page import="java.util.List"%>
<%@page import="DAOs.DAOTipoVeiculo"%>

<%
    DAOTipoVeiculo daoTipoVeiculo = new DAOTipoVeiculo();
    List<TipoVeiculo> tipoVeiculo = daoTipoVeiculo.listInOrderIdTipoVeiculo();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Estilos/Cadastros.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>

        <div> <h1> Cadastro Veiculo </h1></div>
        <form action="${pageContext.request.contextPath}/cadVeiculo"> 
            <p> 
                <label for="codigo"> Código: </label>
                <input type="text" name="codigo_veiculo"/>
                <label for="nome"> Modelo: </label>
                <input type="text" name="nome_veiculo"/>
                <label for="habilitacao"> Tipo Veiculo: </label>
                -<select class="form-control" name="tipo_veiculo_id_tipo_veiculo">
                    <option value="">SELECIONE</option>
                <%
                    for (TipoVeiculo i : tipoVeiculo) {
                %>
                <option value="<%=i.getIdTipoVeiculo()%>"><%=i.getNomeTipoVeiculo()%></option>
                <%}%>
               
                </select>
                
                <input type="submit" value="Enviar" />
            </p>
    </body>
</html>
