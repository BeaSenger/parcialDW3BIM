<%-- 
    Document   : professor
    Created on : 29/06/2018, 01:10:48
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:useBean id="dao" class="DAOs.DAOProfessor"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Estilos/Listas.css" rel="stylesheet" type="text/css"/>
        <title>Auto Escola Nacional</title>
    </head>
    <body>
            <table id="customers">
                <thead>
                <th>CPF</th>
                <th>Nome</th>
                <th>Habilitação</th>             
                </thead>
                <tbody>
                    <c:set var="resultadoLista" value="${dao.listInOrderCpfProfessor()}"/>
                    <c:forEach var="p" items="${resultadoLista}">
                        <tr> 
                            <td>${p.getCpfProfessor()}</td>
                            <td>${p.getNomeProfessor()}</td>
                            <td>${p.getHabilitacao()}</td>
                            
                        </tr>
                        </c:forEach>
                </tbody>

            </table>
    </body>
</html>
