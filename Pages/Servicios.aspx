<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Servicios.aspx.cs" Inherits="CRUD.Pages.Servicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuadrícula con Botones</title>
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
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .box {
            background-color: #ffffff;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.2s;
        }

        .box:hover {
            transform: translateY(-5px);
        }

        h2 {
            font-size: 24px;
            color: #333;
        }

        p {
            font-size: 16px;
            color: #666;
        }

        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div class="container">
            <!-- Recuadro 1 -->
            <div class="box">
                <h2>Frenos</h2>
                <p>Reemplazo de pastillas y discos de freno<br>
                    Reparación de frenos antibloqueo (ABS)<br>
                    Reparación de cilindros de freno y líneas de freno.</p>
                <div class="buttons">
                    <button>Editar</button>
                    <button>Eliminar</button>
                </div>
            </div>

            <!-- Recuadro 2 -->
            <div class="box">
                <h2>Suspensión y Dirección</h2>
                <p>Reemplazo de amortiguadores y resortes<br>
                    Reparación de la dirección y la suspensión.<br>
                    Alineación y balanceo de ruedas.</p>
                <div class="buttons">
                    <button>Editar</button>
                    <button>Eliminar</button>
                </div>
            </div>

            <!-- Recuadro 3 -->
            <div class="box">
                <h2>Sistemas Eléctricos y Electrónicos</h2>
                <p>Diagnóstico mediante lectura de códigos de falla<br>
                    Instalación de sistemas de entretenimiento y navegación<br>
                    Reparación de sistemas de iluminación.</p>
                <div class="buttons">
                    <button>Editar</button>
                    <button>Eliminar</button>
                </div>
            </div>

            <!-- Recuadro 4 -->
            <div class="box">
                <h2>Mantenimiento Preventivo</h2>
                <p>Cambios de aceite y filtro.<br>
                    Cambios de filtro de aire.<br>
                    Inspección y mantenimiento de frenos.<br>
                    Rotación de neumáticos.<br>
                    Alineación y balanceo de ruedas.<br>
                    Cambio de bujías y cables.<br>
                    Cambio de correas</p>
                <div class="buttons">
                    <button>Editar</button>
                    <button>Eliminar</button>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
