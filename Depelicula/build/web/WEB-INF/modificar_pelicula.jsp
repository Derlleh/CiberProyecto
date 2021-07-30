<%-- 
    Document   : pelicula
    Created on : 16-10-2018, 10:35:12
    Author     : MCPA
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <style>
        input[type=text],input[type=number], select, textarea,input[type=date] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
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
    <body>
        <ul>
            <li><a href="#" class="active" style="background-color: #ff3366">Modificando</a></li>
            <li><a href="agregar_productora">Agregar Productora</a></li>
            <li><a href="listar_productora">Listas de Productora</a></li>
            <li><a href="listar_pelicula">Listas de Pelicula</a></li>
            <li><a href="cerrarsesion" style="background-color: red">Cerrar Sesión ${sessionScope.usuario.nombre}</a></li>

        </ul>
        <h3>Modificar Pelicula</h3>
        <div>
            <form action="modificar_pelicula" method="POST">
                <input type="hidden" value="${pelicula.id}" name="id"/>
                <label>Titulo</label>
                <input type="text" value="${pelicula.nombre}" name="titulo">

                <label>Director</label>
                <input type="text" value="${pelicula.director}" name="director">

                <label>Año Lanzamiento</label>                
                <input type="number" value="${pelicula.aa}" name="anio">

                <label>Duracion</label>
                <input type="number" value="${pelicula.duracion}" name="duracion">

                <label>Productora</label>
                <select name="productora">
                    <c:forEach items="${productoras}" var="pro">
                        <option value="${pro.id}" ${(pelicula.productora.id eq pro.id)?'selected':''}>${pro.nombre}</option>
                    </c:forEach>
                </select>

                <input type="submit" value="Modificar pelicula">
                <a href="listar_pelicula" class="btn btn-primary" style="width: 100%">Cancelar Edicion</a>
            </form>



            <h3>${mensaje}</h3>
            <c:forEach items="${mensajes}" var="mensaje">
                <h3>${mensaje}</h3>
            </c:forEach>
        </div>
    </body>
</html>
