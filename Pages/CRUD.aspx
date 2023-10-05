<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="CRUD.Pages.CRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    CRUD
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="mx-auto" style="width: 250px">
        <asp:Label runat="server" CssClass="h2" ID="lbltitulo"></asp:Label>
    </div>
        <form runat="server">
            <div class="mb-3">
                <label for="tbnombre" class="form-label">Nombre</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbnombre"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="tbAP" class="form-label">Apellido Paterno</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbAP"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="tbAM" class="form-label">Apellido Materno</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbAM"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="tbCI" class="form-label">CI</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbCI"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="tbEm" class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbEm"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="tbFNac" class="form-label">Fecha de Nacimiento</label>
                <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="tbFNac"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="tbCel1" class="form-label">Primer Contacto</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbCel1"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="tbCel2" class="form-label">Segundo Contacto</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbCel2"></asp:TextBox>
            </div>
            <div class="d-flex justify-content-center">
                <asp:Button runat="server" CssClass="btn btn-primary me-2" ID="BtnCreate" Text="GUARDAR NUEVO USUARIO" Visible="false" OnClick="BtnCreate_Click" />
                <asp:Button runat="server" CssClass="btn btn-primary me-2" ID="BtnUpdate" Text="GUARDAR MODIFICACION" Visible="false" OnClick="BtnUpdate_Click" />
                <asp:Button runat="server" CssClass="btn btn-danger me-2" ID="BtnDelete" Text="ELIMINAR" Visible="false" OnClick="BtnDelete_Click" />
                <asp:Button runat="server" CssClass="btn btn-primary btn-dark" ID="BtnVolver" Text="Volver" Visible="True" OnClick="BtnVolver_Click" />
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
</asp:Content>
