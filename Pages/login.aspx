<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CRUD.Pages.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <title>Tu Título</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <span class="hamburger-btn material-symbols-rounded"></span>
                <a href="#" class="navbar-brand">
                    <img src="image/Screenshot_124.png" alt="logo" class="img-fluid" style="max-height: 50px;">
                    TALLER PANETON
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
                <button class="btn btn-primary ml-3">LOG IN</button>
            </nav>
        </header>
        <div class="blur-bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="card-title">Bienvenido de vuelta</h2>
                            <p class="card-text">Registrate usando tu información personal para mantener el contacto</p>
                            <h2 class="card-title">LOGIN</h2>
                            <form action="#">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="text" class="form-control" id="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" id="password" required>
                                </div>
                                <a href="#" class="forgot-pass-link">Olvidaste tu contraseña?</a>
                                <button type="submit" class="btn btn-primary">Log In</button>
                            </form>
                            <div class="bottom-link">
                                No tienes una cuenta?
                                <a href="#" id="signup-link">Signup</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
