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
        /*AQUI EL MODAL*/
        .modal
        {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .modal
        {
            position: fixed;
            top: 0;
            left: 0;
            background: rgba(0, 0, 0, 0.5);
            transition: all 500ms ease;
            opacity: 0;
            visibility: hidden;
        }
        #btn-modal:checked ~ .modal{
            opacity: 1;
            visibility: visible;
        }
        .contenedor{
            width: 500px;
            height: 500px;
            top: 0px;
            right: 0px;
            margin: auto;
            background: #9cc4ee;
            background-repeat: no-repeat;
            box-shadow: 1px 7px 25px rgba(0, 0, 0, 0.6);
            transition: all 500ms ease;
            position: relative;
            transform: translateY(-100%);
            z-index: 1;
        }
        #btn-modal:checked ~ .modal .contenedor{
            transform: translateY(0%);
        }
        .contenedor header{
            padding: 5px;
            background: #275360;
            color: #fff;
            z-index: -1;
            position: absolute;
        }
        .contenedor label{
            position: absolute;
            top: 5px;
            right: 15px;
            color: black;
            font-size: 20px;
            cursor: pointer;
            z-index: 1;
        }
        .contenido{
            position: absolute;
            top: 15%;
            right: 1px;
            left: 1px;
            justify-content: center;
            align-items: center;
        }
        #btn-modal{
            display: none;
        }
        .lbl-modal{
            background: #007bff;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            right: 90px;
            top: 65px;
            position: absolute;
        }
        .label{
            background:#ffffff;
        }
        #btn-modal:checked ~ .table{
            opacity: 1;
            visibility: visible;
        }
        .table {
            border-collapse: collapse;
            position: absolute;
            align-items: center;
            z-index: 1;
        }
        th, td {
            padding: 8px;
            border: 2px solid #ccc;
        }
        th {
            text-align: right; /* Alinea los encabezados a la derecha */
            vertical-align: top; /* Alinea los encabezados en la parte superior */
        }
        /*HASTA AQUI EL MODAL*/
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
         <div class="Btn_Create"> 
     <input type="checkbox" id="btn-modal"/>
 <label for="btn-modal" class="lbl-modal">Nuevo Servicio</label>
 <div class="modal">
   <div class="contenedor">
     <header>Registrar Servicio</header>
     <label for="btn-modal">X</label>
     <div class="contenido">                            
             <table>
                 <tr>
                    <th>Codigo operacion:</th>
                    <td><asp:TextBox runat="server" CssClass="form-control" ID="tbcod_ope"></asp:TextBox></td>
                </tr>
                 <tr>
                     <th>Codigo operacion detalle:</th>
                     <td><asp:TextBox runat="server" CssClass="form-control" ID="tbcod_od"></asp:TextBox></td>
                 </tr>
                 <tr>
                     <th>Codigo producto:</th>
                     <td><asp:TextBox runat="server" CssClass="form-control" ID="tbcod_p"></asp:TextBox></td>
                 </tr>
                 <tr>
                     <th>Descripcion de operacion:</th>
                     <td><asp:TextBox runat="server" CssClass="form-control" ID="tbdesc_op"></asp:TextBox></td>
                 </tr>
                 <tr>
                     <th>Tiempo de operacion:</th>
                     <td><asp:TextBox runat="server" CssClass="form-control" ID="tbt_op"></asp:TextBox></td>
                 </tr>
                 <tr>
                     <th>Fecha final operacion:</th>
                     <td><asp:TextBox runat="server" CssClass="form-control" ID="tbt_del"></asp:TextBox></td>
                 </tr>                  
             </table>
            <div class='Abajo-tabla'>
               <Button ID="btn_guardar" OnClick="Btn_Create_Click" runat="server">Guardar</button>
            </div>
           </div>                     
      </div>
   </div>     
 </div>
        
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

        </div>
    </form>
</asp:Content>


