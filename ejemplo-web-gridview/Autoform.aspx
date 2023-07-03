<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Autoform.aspx.cs" Inherits="ejemplo_web_gridview.Autoform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-6">

            <div class="mb-3">
                <label for="txtId" class="form-label">Id</label>
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" />                
            </div>
            <div class="mb-3">
                <label for="txtModelo" class="form-label">Modelo</label>
                <asp:TextBox runat="server" ID="txtModelo" CssClass="form-control"/>
            </div>
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripción</label>
                <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescripcion" CssClass="form-control"/>
            </div> 
            <div class="mb-3">
                <label for="ddlColores" class="form-label">Color</label>
                <asp:DropDownList ID="ddlColores" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtFecha" class="form-label">Fecha</label>
                <asp:TextBox runat="server" TextMode="Date" ID="txtFecha" CssClass="form-control"/>
            </div>
                <asp:CheckBox Text="" runat="server" ID="chkUsado"/>
                <asp:Label ID="lblUsado" runat="server" Text="Usado" CssClass="form-check-label"></asp:Label>
            <div class="mb-3">
                <asp:RadioButton ID="rdbImportado" Text="Importado" AutoPostBack="true" OnCheckedChanged="rdbImportado_CheckedChanged" runat="server" GroupName="Importado" />
                <asp:RadioButton ID="rdbNacional" Text="Nacional" AutoPostBack="true" OnCheckedChanged="rdbImportado_CheckedChanged" Checked="true" runat="server" GroupName="Importado"/>
            </div>
            <div class="mb-3">
                <asp:Button ID="btnAceptar" runat="server" CssClass="btn btn-primary" OnClick="btnAceptar_Click" Text="Aceptar" />
                <a href="Default.aspx" class="btn">Cancelar</a>

                <asp:Button ID="btnModificar" OnClick="btnModificar_Click" Text="Modificar" runat="server" CssClass="btn" />
            </div>

        </div>

    </div>
</asp:Content>
