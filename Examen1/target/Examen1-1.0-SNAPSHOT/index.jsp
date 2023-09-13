<%@page import="java.util.ArrayList"%>
<%@page import="com.miguel.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor = "#17202A">
        <table border="1" align = "center">
            <tr>    
                <td>
                    <h1><font color="#D0D3DA">PRIMER PARCIAL TEM-742</h1>
                    <h1> <font color ="#D0D3DA">Nonmbre:LUIS MIGUEL OLIVERA OSCO</h1>
                    <h1><font color = "#D0D3DA">Carnet:7078842 </h1>
                </td>
            </tr>
        </table>
        <h1>    GESTION DE PRODUCTOS   </h1>
        <a href="Miguel_P?op=nuevo">Nuevo</a>
        <br><br>
        <table border="3">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null) {
                    for (Producto item : lista) {
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria()%></td>
                <td><a href="Miguel_P?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="Miguel_P?op=eliminar&id=<%= item.getId() %>"
                       onclick="return confirm('Esta seguro de eliminar el registro ?')">Eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>

    </body>
</html>
