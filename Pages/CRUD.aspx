<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="CRUD.Pages.CRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    CRUD
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="container">
        <h2 class="text-center">CRUD</h2>
        <form runat="server">
            <div class="mb-3">
                <label for="tbnombre" class="form-label">Nombre</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbnombre"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="tbedad" class="form-label">Edad</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbedad"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="tbemail" class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbemail"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="tbdate" class="form-label">Fecha de nacimiento</label>
                <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="tbdate"></asp:TextBox>
            </div>
            <div class="d-flex justify-content-center">
                <asp:Button runat="server" CssClass="btn btn-primary me-2" ID="BtnCreate" Text="Create" Visible="false" OnClick="BtnCreate_Click" />
                <asp:Button runat="server" CssClass="btn btn-primary me-2" ID="BtnUpdate" Text="Update" Visible="false" OnClick="BtnUpdate_Click" />
                <asp:Button runat="server" CssClass="btn btn-danger me-2" ID="BtnDelete" Text="Delete" Visible="false" OnClick="BtnDelete_Click" />
                <asp:Button runat="server" CssClass="btn btn-dark" ID="BtnVolver" Text="Volver" Visible="True" OnClick="BtnVolver_Click" />
            </div>
        </form>
    </div>
    <!-- Agrega la referencia a Bootstrap JS y Popper.js aquí si es necesario -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
</asp:Content>

