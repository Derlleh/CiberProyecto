<%-- 
    Document   : listar_pelicula
    Created on : 18-10-2018, 16:57:35
    Author     : MCPA
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            input{
                width: 100%;
            }
        </style>
    </head>
    <body>
        <ul>
            <li><a href="agregar_pelicula">Agregar Pelicula</a></li>
            <li><a href="agregar_productora">Agregar Productora</a></li>
            <li><a href="listar_productora">Listas de Productora</a></li>
            <li><a href="listar_pelicula" class="active">Listas de Pelicula</a></li>
            <li><a href="cerrarsesion" style="background-color: red">Cerrar Sesión ${sessionScope.usuario.nombre}</a></li>
        </ul> 
        <br>


        <h2 style="margin-left: 15px">Peliculas</h2>
        <table>
            <tr>
                <th>Id pelicula</th>
                <th>Titulo</th>
                <th>Director</th>
                <th>Duracion</th>
                <th>Año</th>
                <th>Productora</th>
                <th>Fecha registro</th>
                <th colspan="2">Acciones</th>
            </tr>
            <tr>
                <form method="POST" action="listar_pelicula">
                    <td></td>
                    <td><input type="text" name="nombre"/></td>
                    <td><input type="text" name="director"/></td>
                    <td><input type="number" name="duracion"/></td>
                    <td><input type="number" name="aa"/></td>
                    <td>
                        <select name="productora">
                            <option value="-1" selected>Todas</option>
                            <c:forEach items="${productoras}" var="pro">
                                <option value="${pro.id}">${pro.nombre}</option>
                            </c:forEach>
                        </select>
                    </td>   
                    <td></td>
                    <td colspan="2"><button type="submit">Consultar</button></td>
                </form>
            </tr>
            <c:forEach items="${peliculas}" var="pel">
            <tr>
                <td>${pel.id}</td>
                <td>${pel.nombre}</td>
                <td>${pel.director}</td>
                <td>${pel.duracion}</td>
                <td>${pel.aa}</td>
                <td>${pel.productora.nombre}</td>   
                <td>${pel.fecha}</td>
                <td><a href="modificar_pelicula?id=${pel.id}" class="btn btn-primary">Modificar</a></td>
                <td><a href="eliminar_pelicula?id=${pel.id}" class="btn btn-danger">Eliminar</a></td>
            </tr>
        </c:forEach>

    </form>
</body>
</html>
