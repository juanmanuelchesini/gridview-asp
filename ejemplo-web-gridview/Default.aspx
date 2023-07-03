<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ejemplo_web_gridview.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<style>
        .oculto {
            display: none;
        }
    </style>--%>
    <div class="row">
        <div class="col">
            <asp:GridView runat="server" ID="dgvAutos" DataKeyNames="Id" OnSelectedIndexChanged="dgvAutos_SelectedIndexChanged" CssClass="table table-dark table-bordered" AutoGenerateColumns="false">
                <Columns>
                    <%--<asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto" />--%>
                    <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
                    <asp:BoundField HeaderText="Color" DataField="Color" />
                    <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
                    <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
                </Columns>
            </asp:GridView>
            <a href="Autoform.aspx">Agregar</a>
        </div>
    </div>
</asp:Content>
