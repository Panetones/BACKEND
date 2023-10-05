<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="CRUD.HOME" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('<%= ResolveUrl("~/IMAGENES/taller.jpg") %>');
            background-repeat: no-repeat; /* Evitar que la imagen se repita */
            background-size: cover; /* Hacer que la imagen ocupe todo el espacio */
            background-color: #f0f0f0; /* Color de fondo en caso de que la imagen no se cargue */
        }

        .navbar {
            background-color: #333; /* Color de fondo de la barra de navegación */
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd; /* Cambiar el color de fondo al pasar el mouse sobre las opciones */
            color: black;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Fondo blanco semi-transparente para el contenido */
            text-align: center;
        }

        h1 {
            color: #333; /* Color del título */
        }

        p {
            color: #555; /* Color del texto */
        }

        .btn-agendar {
            background-color: #FFA500; /* Color de fondo del botón "Agendar Citas" */
            color: white;
            padding: 10px 20px;
            border: none;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px;
            cursor: pointer;
            Color: #555; /* Color del texto */
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="form2" runat="server">
        <div class="navbar">
            <a href="#">Información del taller</a>
            <a href="#">Servicios del Taller</a>
            <a href="#">Productos Disponibles</a>
            <a href="#">Buzón de Sugerencias</a>
        </div>

        <div class="container">
            <h1>Bienvenido a nuestro taller de mecánica automotriz</h1>
            <p>¡Tenemos lo que necesitas!</p>
            <!-- Otro contenido de la página -->
            <a href="#" class="btn-agendar">Agendar Citas</a>           
        </div>
        <!-- Deynar, aqui le pones mas contenido a la pagina como la historia del taller o rebajas en productos o cosas asi -->
    </form>



</asp:Content>
