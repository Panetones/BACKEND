<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="CRUD.Pages.Clientes" %>
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

        .buttons {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            gap: 80px;
        }

        .button {
            width: 372px;
            height: 183px;
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        /* Agrega más estilos según tus necesidades */
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <!-- Título -->
        <h1 class="title">Cliente</h1>

        <!-- Recuadros con botones -->
        <div class="buttons">
            <!-- Botón 1 -->
            <div class="button">
                <button type="button" class="btn btn-primary btn-lg btn-block" onclick="window.location.href='Servicios.aspx'">Servicios</button>

                
                Explora nuestros diversos servicios de alta calidad para mantener tu vehículo en excelente estado y garantizar un rendimiento óptimo.</div>

            <!-- Botón 2 -->
            <div class="button">
                <button type="button" class="btn btn-secondary btn-lg btn-block" onclick="window.location.href='misAutos.aspx'">Mis autos</button>
                Gestiona y realiza un seguimiento de todos los vehículos registrados en tu cuenta, accediendo a información importante y detalles de mantenimiento.</div>
            
            <!-- Botón 3 -->
            <div class="button">
                <button type="button" class="btn btn-success btn-lg btn-block">Citas</button>
                Programa y gestiona tus citas de servicio de manera conveniente, para asegurarte de que tu automóvil esté siempre listo cuando lo necesites.</div>

            <!-- Botón 4 -->
            <div class="button">
                <button type="button" class="btn btn-danger btn-lg btn-block">Historial</button>
                Consulta un registro detallado de todas las citas pasadas, servicios realizados y mantenimiento previo de tus vehículos para tomar decisiones informadas.</div>
        </div>
    </div>

</asp:Content>
