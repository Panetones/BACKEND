<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="misAutos.aspx.cs" Inherits="CRUD.Pages.misAutos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Proyecto con .aspx y Bootstrap</title>
    <!-- Agrega la referencia a Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Estilos CSS */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .title {
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            color: #333333;
        }

        .rectangles {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            gap: 20px;
        }

        .rectangle {
            width: 600px;
            height: 300px;
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        .image {
            width: 300px;
            height: 300px;
            object-fit: cover;
        }

        .buttons {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            gap: 10px;
        }

        /* Agrega más estilos según tus necesidades */
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <!-- Título -->
        <h1 class="title">Mis autos</h1>

        <!-- Rectángulos con imágenes y botones -->
        <div class="rectangles">
            <!-- Rectángulo 1 -->
            <div class="rectangle">
                <img src="auto1.jpg" alt="Auto 1" class="image">
                <div class="buttons">
                    <button type="button" class="btn btn-primary btn-lg">Historial</button>
                    <button type="button" class="btn btn-secondary btn-lg">Solicitar cita</button>
                </div>
            </div>

            <!-- Rectángulo 2 -->
            <div class="rectangle">
                <img src="auto2.jpg" alt="Auto 2" class="image">
                <div class="buttons">
                    <button type="button" class="btn btn-success btn-lg">Historial</button>
                    <button type="button" class="btn btn-danger btn-lg">Solicitar cita</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
