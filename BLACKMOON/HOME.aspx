<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HOME.aspx.vb" Inherits="BLACKMOON.HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style17 {
            width: 1488px;
        }
        .auto-style18 {
            width: 100%;
            height: 209px;
        }
        .auto-style16 {
            width: 118px;
        }
        .auto-style7 {
            width: 123px;
        }
        .auto-style8 {
            width: 124px;
        }
        .auto-style11 {
            width: 130px;
        }
        .auto-style12 {
            width: 132px;
        }
        .auto-style13 {
            width: 128px;
        }
        .auto-style10 {
            width: 152px;
        }
        .auto-style15 {
            width: 82px;
        }
        .auto-style2 {
            width: 118px;
            margin-left: 80px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server" style="background-color: #000080; border: medium double #00FFFF; position: static; font-family: 'Script MT Bold'; font-size: medium; font-weight: normal; font-style: inherit; font-variant: normal; text-transform: none; color: #FFFFFF; word-spacing: inherit; white-space: normal; text-align: center; vertical-align: middle; text-indent: inherit; line-height: inherit; letter-spacing: inherit;">
        <div style="font-family: 'Sitka Heading Semibold'; font-size: x-large; font-weight: normal; font-style: italic; text-decoration: underline; text-align: center">
            MENÚS</div>
        <br />
        <table cellspacing="4" class="auto-style18">
            <tr>
                <td class="auto-style16" style="text-align: center; font-family: 'Lucida Handwriting'">LOGIN</td>
                <td class="auto-style7" style="text-align: center; font-family: 'Lucida Handwriting'">CLIENTE</td>
                <td class="auto-style8" style="text-align: center; font-family: 'Lucida Handwriting'">EMPLEADO</td>
                <td class="auto-style11" style="text-align: center; font-family: 'Lucida Handwriting'">PRODUCTO</td>
                <td class="auto-style12" style="text-align: center; font-family: 'Lucida Handwriting'">CATEGORÍA</td>
                <td class="auto-style13" style="text-align: center; font-family: 'Lucida Handwriting'">VENTA</td>
                <td class="auto-style10" style="text-align: center; font-family: 'Lucida Handwriting'">PROVEEDORES</td>
                <td class="auto-style11" style="text-align: center; font-family: 'Lucida Handwriting'">PEDIDO</td>
                <td class="auto-style15" style="text-align: center; font-family: 'Lucida Handwriting'">INVENTARIO</td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: 'Lucida Handwriting'; text-align: center;">
                    <asp:Button ID="Button3" runat="server" BackColor="#FF9900" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/lusuario.aspx" Text="INSERTAR" Width="120px" />
                </td>
                <td class="auto-style7" style="font-family: 'Lucida Handwriting'; text-align: center;">
                    <asp:Button ID="Button74" runat="server" BackColor="#FF9900" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Icliente.aspx" Text="INSERTAR" Width="120px" />
                </td>
                <td class="auto-style8" style="font-family: 'Lucida Handwriting'; text-align: center;">
                    <asp:Button ID="Button109" runat="server" BackColor="#FF9900" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Iempleado.aspx" Text="INSERTAR" Width="120px" />
                </td>
                <td class="auto-style11" style="font-family: 'Lucida Handwriting'; text-align: center;">
                    <asp:Button ID="Button110" runat="server" BackColor="#FF9900" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="INSERTAR" Width="120px" PostBackUrl="~/Iproducto.aspx" />
                </td>
                <td class="auto-style12" style="font-family: 'Lucida Handwriting'; text-align: center;">
                    <asp:Button ID="Button111" runat="server" BackColor="#FF9900" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Icategoria.aspx" Text="INSERTAR" Width="120px" />
                </td>
                <td class="auto-style13" style="font-family: 'Lucida Handwriting'; text-align: center;">
                    <asp:Button ID="Button112" runat="server" BackColor="#FF9900" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="INSERTAR" Width="120px" PostBackUrl="~/Iventa.aspx" />
                </td>
                <td class="auto-style10" style="font-family: 'Lucida Handwriting'; text-align: center;">
                    <asp:Button ID="Button113" runat="server" BackColor="#FF9900" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="INSERTAR" Width="130px" PostBackUrl="~/Iproveedor.aspx" />
                </td>
                <td class="auto-style11" style="font-family: 'Lucida Handwriting'; text-align: center;">
                    <asp:Button ID="Button114" runat="server" BackColor="#FF9900" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="INSERTAR" Width="120px" PostBackUrl="~/Ipedido.aspx" />
                </td>
                <td class="auto-style15" style="font-family: 'Lucida Handwriting'; text-align: center;">
                    <asp:Button ID="Button115" runat="server" BackColor="#FF9900" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="INSERTAR" Width="120px" PostBackUrl="~/Iinventario.aspx" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Button ID="Button4" runat="server" BackColor="#9933FF" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Musuario.aspx" Text="MODIFICAR" Width="120px" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button47" runat="server" BackColor="#9933FF" BorderColor="White" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Mcliente.aspx" Text="MODIFICAR" Width="120px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button94" runat="server" BackColor="#9933FF" BorderColor="White" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Mempleado.aspx" Text="MODIFICAR" Width="120px" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button95" runat="server" BackColor="#9933FF" BorderColor="White" Font-Names="Lucida Handwriting" ForeColor="White" Text="MODIFICAR" Width="120px" PostBackUrl="~/Mproducto.aspx" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button96" runat="server" BackColor="#9933FF" BorderColor="White" Font-Names="Lucida Handwriting" ForeColor="White" Text="MODIFICAR" Width="120px" PostBackUrl="~/Mcategoria.aspx" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button97" runat="server" BackColor="#9933FF" BorderColor="White" Font-Names="Lucida Handwriting" ForeColor="White" Text="MODIFICAR" Width="120px" PostBackUrl="~/Mventa.aspx" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button98" runat="server" BackColor="#9933FF" BorderColor="White" Font-Names="Lucida Handwriting" ForeColor="White" Text="MODIFICAR" Width="130px" PostBackUrl="~/Mproveedores.aspx" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button99" runat="server" BackColor="#9933FF" BorderColor="White" Font-Names="Lucida Handwriting" ForeColor="White" Text="MODIFICAR" Width="120px" PostBackUrl="~/Mpedido.aspx" />
                </td>
                <td class="auto-style15">
                    <asp:Button ID="Button100" runat="server" BackColor="#9933FF" BorderColor="White" Font-Names="Lucida Handwriting" ForeColor="White" Text="MODIFICAR" Width="120px" PostBackUrl="~/Minventario.aspx" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Button ID="Button5" runat="server" BackColor="#990000" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Eusuario.aspx" Text="ELIMINAR" Width="120px" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button86" runat="server" BackColor="#990000" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Ecliente.aspx" Text="ELIMINAR" Width="120px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button87" runat="server" BackColor="#990000" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Eempleado.aspx" Text="ELIMINAR" Width="120px" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button88" runat="server" BackColor="#990000" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="ELIMINAR" Width="120px" PostBackUrl="~/Eproducto.aspx" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button89" runat="server" BackColor="#990000" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="ELIMINAR" Width="120px" PostBackUrl="~/Ecategoria.aspx" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button90" runat="server" BackColor="#990000" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="ELIMINAR" Width="120px" PostBackUrl="~/Eventa.aspx" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button91" runat="server" BackColor="#990000" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="ELIMINAR" Width="130px" PostBackUrl="~/Eproveedores.aspx" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button92" runat="server" BackColor="#990000" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="ELIMINAR" Width="120px" PostBackUrl="~/Epedido.aspx" />
                </td>
                <td class="auto-style15">
                    <asp:Button ID="Button93" runat="server" BackColor="#990000" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="ELIMINAR" Width="120px" PostBackUrl="~/Einventario.aspx" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Button ID="Button6" runat="server" BackColor="#006699" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Busuario.aspx" Text="BUSCAR" Width="120px" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button101" runat="server" BackColor="#006699" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Bcliente.aspx" Text="BUSCAR" Width="120px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button102" runat="server" BackColor="#006699" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Bempleado.aspx" Text="BUSCAR" Width="120px" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button103" runat="server" BackColor="#006699" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="BUSCAR" Width="120px" PostBackUrl="~/Bproductos.aspx" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button104" runat="server" BackColor="#006699" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="BUSCAR" Width="120px" PostBackUrl="~/Bcategoria.aspx" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button105" runat="server" BackColor="#006699" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="BUSCAR" Width="120px" PostBackUrl="~/Bventa.aspx" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button106" runat="server" BackColor="#006699" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="BUSCAR" Width="130px" PostBackUrl="~/Bproveedores.aspx" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button107" runat="server" BackColor="#006699" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="BUSCAR" Width="120px" PostBackUrl="~/Bpedido.aspx" />
                </td>
                <td class="auto-style15">
                    <asp:Button ID="Button108" runat="server" BackColor="#006699" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="BUSCAR" Width="120px" PostBackUrl="~/Binventario.aspx" />
                </td>
            </tr>
        </table>
        <br />
        <table cellspacing="4" class="auto-style1">
            <tr>
                <td class="auto-style17" style="text-align: center; font-family: 'Lucida Handwriting'">
                    <asp:Button ID="Button116" runat="server" BackColor="#FF0066" BorderColor="White" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" Text="Graficas" Width="120px" PostBackUrl="~/Graficas.aspx" />
                </td>
                <td style="text-align: center; font-family: 'Lucida Handwriting'">&nbsp;</td>
            </tr>
        </table>
        <br />
&nbsp;<br />
        <br />
&nbsp;&nbsp;</form>
    <p>
        &nbsp;</p>
</body>
</html>
