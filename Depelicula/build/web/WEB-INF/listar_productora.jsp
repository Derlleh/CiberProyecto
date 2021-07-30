<%-- 
    Document   : listar_productora
    Created on : 18-10-2018, 0:05:00
    Author     : MCPA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
            }

            li {
                float: left;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: #111;
            }

            .active {
                background-color: #4CAF50;
            }
            
            
        </style>
    </head>
    <body>
        <ul>
            <li><a href="agregar_pelicula">Agregar Pelicula</a></li>
            <li><a href="agregar_productora">Agregar Productora</a></li>
            <li><a href="listar_productora" class="active">Listas de Productora</a></li>
            <li><a href="listar_pelicula">Listas de Pelicula</a></li>
            <li><a href="cerrarsesion" style="background-color: red">Cerrar Sesión ${sessionScope.usuario.nombre}</a></li>
        </ul> 
        <br>
       
        <h2 style="margin-left: 15px">Productoras</h2>
        <form method="POST">
        <table>
            <tr>
                <th>Id Productora</th>
                <th>Nombre Productora</th>
                <th colspan="2">Acciones</th>
                
            </tr>
            <c:forEach items="${productoras}" var="pro">
                <tr>
                    <td>${pro.id}</td>
                    <td>${pro.nombre}</td>
                    <input type="hidden" value="${pro.id}" name="aidi"/>
                    <td><a href="modificar_productora?id=${pro.id}" class="btn btn-primary">Modificar</a></td>
                    <td><a href="eliminar_productora?id=${pro.id}" class="btn btn-danger">Eliminar</a></td>
                </tr>                
            </c:forEach>
            <h5 style="color: red">${error}</h5>
        </table>
            
    </form>
    </body>
</html>
