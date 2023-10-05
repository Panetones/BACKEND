<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="CRUD.Pages.CRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    CRUD
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="mx-auto" style="width: 250px">
        <asp:Label runat="server" CssClass="h2" ID="lbltitulo"></asp:Label>
    </div>
    <form runat="server" class="h-100 d-flex align-items-center justify-content-center">
        <div>
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbnombre"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido Paterno</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbAP"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido Materno</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbAM"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">CI</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbCI"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbEm"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Fecha de Nacimiento</label>
                <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="tbFNac"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Primer Contacto</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbCel1"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Segundo Contacto</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbCel2"></asp:TextBox>
            </div>
            <asp:Button runat="server" CssClass="btn btn-primary" ID="BtnCreate" Text="GUARDAR NUEVO USUARIO" Visible="false" OnClick="BtnCreate_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary" ID="BtnUpdate" Text="GUARDAR MODIFICACION" Visible="false" onclick="BtnUpdate_Click"/>
            <asp:Button runat="server" CssClass="btn btn-primary" ID="BtnDelete" Text="ELIMINAR" Visible="false" OnClick="BtnDelete_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary btn-dark" ID="BtnVolver" Text="Volver" Visible="True" OnClick="BtnVolver_Click" />
        </div>
    </form>
</asp:Content>
