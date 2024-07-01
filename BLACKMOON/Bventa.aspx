<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Bventa.aspx.vb" Inherits="BLACKMOON.Bventa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">



        .auto-style2 {
            margin-top: 10px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style6 {
            width: 833px;
        }
        .auto-style7 {
            width: 500px;
        }
        .auto-style8 {
            width: 375px;
        }
        .auto-style9 {
            width: 402px;
        }
        .auto-style10 {
            width: 394px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: 'Lucida Handwriting'; font-style: normal; font-variant: normal; color: #FFFFFF; text-align: center; background-color: #000080; background-position: center center; border-style: double; border-width: inherit; border-color: #00FFFF; padding: inherit; margin: inherit; position: static; z-index: inherit; display: block">
        <div>
            <br />
            BUSCAR VENTA POR RANGO DE FECHA<br />
            <br />
            <br />
            Selecciona la fecha de venta que desees buscar:<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FECHA1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FECHA2<br />
            <table align="center" class="auto-style3">
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#660033" BorderColor="White" BorderStyle="Double" BorderWidth="1px" Font-Names="Century Gothic" Font-Size="9pt" ForeColor="White" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style9">
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="#660033" BorderColor="White" BorderStyle="Double" BorderWidth="1px" Font-Names="Century Gothic" Font-Size="9pt" ForeColor="White" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Buscar Venta" Width="201px" BackColor="#CC99FF" BorderStyle="Double" CssClass="auto-style2" Font-Names="Lucida Handwriting" ForeColor="White" BorderColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" BackColor="#990033" BorderStyle="Double" Font-Names="Lucida Handwriting" ForeColor="White" PostBackUrl="~/Home.aspx" Text="&lt;Volver al inicio" Width="192px" BorderColor="White" />
            <br />
            <table align="center" class="auto-style3">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id_venta" DataSourceID="RangoDeFechas" Font-Names="Century Gothic" ForeColor="Black">
                            <Columns>
                                <asp:BoundField DataField="id_venta" HeaderText="id_venta" InsertVisible="False" ReadOnly="True" SortExpression="id_venta" />
                                <asp:BoundField DataField="nom_empl" HeaderText="nom_empl" SortExpression="nom_empl" />
                                <asp:BoundField DataField="nom_prod" HeaderText="nom_prod" SortExpression="nom_prod" />
                                <asp:BoundField DataField="nom_cate" HeaderText="nom_cate" SortExpression="nom_cate" />
                                <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                                <asp:BoundField DataField="total_venta" HeaderText="total_venta" SortExpression="total_venta" />
                                <asp:BoundField DataField="fecha_venta" HeaderText="fecha_venta" SortExpression="fecha_venta" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="RangoDeFechas" runat="server" ConnectionString="<%$ ConnectionStrings:BLACKMOONConnectionString %>" SelectCommand="SELECT venta.id_venta, empleado2.nom_empl, producto.nom_prod, categoria.nom_cate, venta.cantidad, venta.total_venta, venta.fecha_venta
FROM     venta INNER JOIN
                  empleado2 ON venta.id_empl = empleado2.id_empl INNER JOIN
                  producto ON venta.id_prod = producto.id_prod INNER JOIN
                  categoria ON producto.id_categoria = categoria.id_categoria
			WHERE (venta.fecha_venta BETWEEN @fecha_venta AND @fecha_venta2)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Calendar1" Name="fecha_venta" PropertyName="SelectedDate" />
                                <asp:ControlParameter ControlID="Calendar2" Name="fecha_venta2" PropertyName="SelectedDate" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
