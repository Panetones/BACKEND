<%@ Page Title="Loggin" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CRUD.Pages.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href ="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link href="RecursoCSS/EstilosLogin.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
 
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <span class="hamburger-btn material-symbols-rounded"></span>
                <a href="#" class="navbar-brand">
                    <img src="Imagen/imagenLogin.png" alt="logo" class="img-fluid" style="max-height: 50px;">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Experiencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sobre nosotros</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contactanos</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
    <hr />
    <article>
        <hr />
         <div class="bg-light">
             <div class="wrapper">
                 <div class="formcontent">
                     <form id ="formulario_loggin" runat="server">
                         <div class="form-control">

                            <div class="row">
                                <asp:Label class="h3" ID="lblBienvenida" runat="server" Text="BIENVENIDO"></asp:Label>
                            </div>
                            <div>
                                <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                                <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Nombre de Usuario"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                                <asp:TextBox ID="tbPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                            </div>
                            <hr />
                            <div class="row">
                                <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                            </div>
                            <br />
                            <div class="row">
                                <asp:Button ID="BtnIngresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click" />
                            </div>

                         </div>
                     </form>
                 </div>
             </div>

         </div>

    </article>
       
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
