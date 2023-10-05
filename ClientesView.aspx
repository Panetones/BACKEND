<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="ClientesView.aspx.cs" Inherits="CRUD.ClientesView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server">
        <br />
        <div class="mx-auto" style="width:300px">
            <h2 class="auto-style1">Listado de clientes en sistema</h2>
        </div>
        <br />
        <br />
        <div class="container row">
            <div class="table small">
                <asp:GridView runat="server" ID="gvusuarios" class="table table-borderless table-hover">
                    <Columns>
                        <asp:TemplateField HeaderText="Opciones del administrador">
                            <ItemTemplate>
                                <asp:Button runat="server" Text="LEER" CssClass="btn form-control-sm btn-info" ID="BtnReads" OnClick="BtnReads_Click"/>
                                <asp:Button runat="server" Text="MODIFICAR" CssClass="btn form-control-sm btn-warning" ID="BtnUpdates" OnClick="BtnUpdates_Click" />
                                <asp:Button runat="server" Text="BORRAR" CssClass="btn form-control-sm btn-danger" ID="BtnDeletes" OnClick="BtnDeletes_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</asp:Content>
