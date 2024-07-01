<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Graficas.aspx.vb" Inherits="BLACKMOON.Graficas" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 702px;
        }
        .auto-style3 {
            width: 702px;
            height: 50px;
        }
        .auto-style4 {
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #000080; border: medium double #00FFFF; position: static; font-family: 'Script MT Bold'; font-size: medium; font-weight: normal; font-style: inherit; font-variant: normal; text-transform: none; color: #FFFFFF; word-spacing: inherit; white-space: normal; text-align: center; vertical-align: middle; text-indent: inherit; line-height: inherit; letter-spacing: inherit">
        <div style="font-family: 'Lucida Handwriting'">
            <br />
            GRÁFICAS<br />
            <br />
            <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <br />
                        Gráfica producto-cantidad en stock<br />
                    </td>
                    <td class="auto-style4">Gráfica producto-venta</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Chart ID="Chart1" runat="server" BackColor="Purple" BackSecondaryColor="Blue" BorderlineColor="Aqua" BorderlineDashStyle="DashDot" DataSourceID="graficaProd" Height="451px" Palette="Light" Width="526px">
                            <series>
                                <asp:Series Name="Series1" XValueMember="nom_prod" YValueMembers="Cantidad">
                                </asp:Series>
                            </series>
                            <chartareas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </chartareas>
                        </asp:Chart>
                        <asp:SqlDataSource ID="graficaProd" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT producto.nom_prod, SUM(Inventario.Cantidad_En_Stock) AS Cantidad, producto.id_prod FROM producto INNER JOIN Inventario ON producto.id_prod = Inventario.id_Prod GROUP BY producto.nom_prod, producto.id_prod"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Chart ID="Chart2" runat="server" BackColor="Purple" BackSecondaryColor="Blue" BorderlineColor="Aqua" BorderlineDashStyle="DashDot" DataSourceID="graficaVenta" Height="454px" Palette="Pastel" Width="502px">
                            <series>
                                <asp:Series Name="Series1" XValueMember="nom_prod" YValueMembers="Cantidad">
                                </asp:Series>
                            </series>
                            <chartareas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </chartareas>
                        </asp:Chart>
                        <asp:SqlDataSource ID="graficaVenta" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT producto.nom_prod, SUM(venta.cantidad) AS Cantidad, producto.id_prod, venta.fecha_venta FROM producto INNER JOIN venta ON producto.id_prod = venta.id_prod GROUP BY producto.nom_prod, producto.id_prod, venta.fecha_venta"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
