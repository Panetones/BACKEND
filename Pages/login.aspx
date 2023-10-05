<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CRUD.Pages.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="tu-archivo-de-css.css">
    <title>Tu Título</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
        <form runat="server">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <span class="hamburger-btn material-symbols-rounded"></span>
                <a href="#" class="logo">
                    <img src="image/Screenshot_124.png" alt="logo">
                    <h2>TALLER PANETON</h2>
                </a>
                <ul class="links">
                    <span class="close-btn material-symbols-rounded"></span>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Servicios</a></li>
                    <li><a href="#">Experiencia</a></li>
                    <li><a href="#">Sobre nosotros</a></li>
                    <li><a href="#">Contactanos</a></li>
                </ul>
                <button class="login-btn">LOG IN</button>
            </nav>
        </header>
        <div class="blur-bg-overlay"></div>
        <div class="container">
            <div class="form-popup">
                <span class="close-btn material-symbols-rounded">close</span>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-box login">
                            <div class="form-details">
                                <h2>Bienvenido de vuelta</h2>
                                <p>Registrate usando tu información personal para mantener el contacto</p>
                            </div>
                            <div class="form-content">
                                <h2>LOGIN</h2>
                                <form action="#">
                                    <div class="input-field">
                                        <input type="text" required>
                                        <label>Email</label>
                                    </div>
                                    <div class="input-field">
                                        <input type="password" required>
                                        <label>Password</label>
                                    </div>
                                    <a href="#" class="forgot-pass-link">Olvidaste tu contraseña?</a>
                                    <button type="submit">Log In</button>
                                </form>
                                <div class="bottom-link">
                                    No tienes una cuenta?
                                    <a href="#" id="signup-link">Signup</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-box signup">
                            <div class="form-details">
                                <h2>Crea una cuenta</h2>
                                <p>Para ser parte de esta comunidad, regístrate usando tu información personal</p>
                            </div>
                            <div class="form-content">
                                <h2>SIGNUP</h2>
                                <form action="#">
                                    <div class="input-field">
                                        <input type="text" required>
                                        <label>Ingresa tu email</label>
                                    </div>
                                    <div class="input-field">
                                        <input type="password" required>
                                        <label>Crear contraseña</label>
                                    </div>
                                    <div class="policy-text">
                                        <input type="checkbox" id="policy">
                                        <label for="policy">
                                            Estoy de acuerdo
                                            <a href="#" class="option">Términos y Condiciones</a>
                                        </label>
                                    </div>
                                    <button type="submit">Sign Up</button>
                                </form>
                                <div class="bottom-link">
                                    Ya tienes una cuenta?
                                    <a href="#" id="login-link">Login</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
