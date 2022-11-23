<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Examen2.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style9 {
            text-align: center;
            font-size: x-large;
            background-color: #66CCFF;
        }
        .auto-style12 {
            width: 133px;
            height: 38px;
        }
        .auto-style13 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style9">
            Cajero</div>
        <p>
            Para completar su compra por favor ingrese la siguiente información:</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">Nombre de personal:</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="ddCajero" runat="server">
                        <asp:ListItem Value="1">Kenny</asp:ListItem>
                        <asp:ListItem Value="2">María</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Producto:</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="ddProducto" runat="server">
                        <asp:ListItem Value="1">Arroz 2Kg</asp:ListItem>
                        <asp:ListItem Value="2">Atún con vegetales</asp:ListItem>
                        <asp:ListItem Value="3">Lomo 3Kg</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Número de caja:</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="ddRegistradora" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Button ID="bCompra" runat="server" OnClick="bCompra_Click" Text="Terminar compra" />
    </form>
</body>
</html>
