<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="ClientCRUD.aspx.cs" Inherits="CRUD.ClientCRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
<div class="mx-auto" style="width: 250px">
    <asp:Label runat="server" CssClass="h2" ID="lbltitulo"></asp:Label>
</div>
    <form runat="server">
        <div class="mb-3">
            <label for="tbnombr" class="form-label">Nombre</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbnombC"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label for="tbAP" class="form-label">Apellido Paterno</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbAPC"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label for="tbAM" class="form-label">Apellido Materno</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbAMC"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label for="tbCI" class="form-label">CI</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbCIC"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label for="tbEm" class="form-label">Email</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbEmC"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label for="tbFNac" class="form-label">Fecha de Nacimiento</label>
            <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="tbFNacC"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label for="tbCel1" class="form-label">Celular</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbCel1C"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label for="tbCel2" class="form-label">Telefono</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbCel2C"></asp:TextBox>
        </div>
        
        <div class="d-flex justify-content-center">
            <asp:Button runat="server" CssClass="btn btn-primary me-2" ID="BtnCreateC" Text="GUARDAR DATOS" Visible="false" OnClick="BtnCreateC_Click"/>
            <asp:Button runat="server" CssClass="btn btn-primary me-2" ID="BtnUpdateC" Text="GUARDAR MODIFICACION" Visible="false" OnClick="BtnUpdateC_Click" />
            <asp:Button runat="server" CssClass="btn btn-danger me-2" ID="BtnDeleteC" Text="ELIMINAR" Visible="false" OnClick="BtnDeleteC_Click"/>
            <asp:Button runat="server" CssClass="btn btn-primary btn-dark" ID="BtnVolverr" Text="VOLVER" Visible="True" OnClick="BtnVolverr_Click"/>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
</asp:Content>
