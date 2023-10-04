<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Servicios.aspx.cs" Inherits="CRUD.Pages.Servicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuadrícula con Botones</title>
    <style>
        /* Estilos CSS para la cuadrícula */
        .grid-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 10px;
            margin: 20px;
        }

        .grid-item {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        /* Estilos para los botones */
        .edit-button, .delete-button {
            margin: 5px;
            padding: 5px 10px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        .delete-button {
            background-color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div class="grid-container">
            <!-- Fila 1 -->
            <div class="grid-item">
                <asp:Button ID="btnEditar1" runat="server" Text="Editar" CssClass="edit-button" OnClick="btnEditar_Click" />
                <asp:Button ID="btnEliminar1" runat="server" Text="Eliminar" CssClass="delete-button" OnClick="btnEliminar_Click" />
            </div>
            <div class="grid-item">
                <asp:Button ID="btnEditar2" runat="server" Text="Editar" CssClass="edit-button" OnClick="btnEditar_Click" />
                <asp:Button ID="btnEliminar2" runat="server" Text="Eliminar" CssClass="delete-button" OnClick="btnEliminar_Click" />
            </div>
            <div class="grid-item">
                <asp:Button ID="btnEditar3" runat="server" Text="Editar" CssClass="edit-button" OnClick="btnEditar_Click" />
                <asp:Button ID="btnEliminar3" runat="server" Text="Eliminar" CssClass="delete-button" OnClick="btnEliminar_Click" />
            </div>
            <!-- Puedes continuar con las otras filas y columnas -->
        </div>
    </form>
</asp:Content>
